package org.ananichev;

import org.ananichev.generator.Generator;
import io.github.bonigarcia.wdm.ChromeDriverManager;
import org.ananichev.model.Bourse;
import org.ananichev.model.BourseValue;
import org.ananichev.model.MFInvestment;
import org.ananichev.model.data.*;
import org.ananichev.model.data.service.*;
import org.ananichev.utils.CurrencyConverter;
import org.apache.commons.lang.time.StopWatch;
import org.apache.commons.math3.util.Precision;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.ananichev.parser.Parser;
import org.ananichev.selenium.SeleniumSurfer;

import javax.persistence.NoResultException;
import java.io.File;
import java.io.FileFilter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Леонид on 27.03.2017.
 */
public class InformationFinder {
    private Logger logger = LoggerFactory.getLogger(InformationFinder.class);

    private final CompanyService companyService;

    private final AssetService assetService;

    private final FundPortfolioService fundPortfolioService;

    private final BourseAssetService bourseAssetService;

    private final BourseAssetValueService bourseAssetValueService;

    private final Parser oldParser;

    private final Parser parser;

    private final Generator generator;

    private final SeleniumSurfer seleniumSurfer;

    public InformationFinder(CompanyService companyService, AssetService assetService, FundPortfolioService fundPortfolioService, BourseAssetService bourseAssetService, BourseAssetValueService bourseAssetValueService, Parser oldParser, Parser parser, Generator generator, SeleniumSurfer seleniumSurfer) {
        this.companyService = companyService;
        this.assetService = assetService;
        this.fundPortfolioService = fundPortfolioService;
        this.bourseAssetService = bourseAssetService;
        this.bourseAssetValueService = bourseAssetValueService;
        this.oldParser = oldParser;
        this.parser = parser;
        this.generator = generator;
        this.seleniumSurfer = seleniumSurfer;
    }

    private void parseHTMLS() {
        String directory = "src/main/resources/htmls/washingtonmutual";
        List<MFInvestment> investments;
        File[] arrFiles = new File(directory).listFiles(new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.isFile();
            }
        });
        final List<File> allFiles = new ArrayList<File>(Arrays.asList(arrFiles));

        final List<String> columnNames = new ArrayList<String>();
        for(File f : allFiles) {
            String[] strings = f.getName().split("\\_");
            strings = strings[1].split("\\.");
            columnNames.add(strings[0]);
        }
        for(File f : allFiles) {
            String[] strings = f.getName().split("\\_");
            strings = strings[1].split("\\.");
            if(f.getAbsolutePath().contains("old")){
                investments = oldParser.parse(f.getAbsolutePath());
                generator.addRecords(investments, strings[0], directory);
            }else {
                investments = parser.parse(f.getAbsolutePath());
                generator.addRecords(investments, strings[0], directory);
            }
        }
    }

    private void surfForFunds() {
        List<Company> companies = companyService.getAll();
        List<BourseValue> bourseValues = new ArrayList<BourseValue>();
        ChromeDriverManager.getInstance().setup();
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.google.com/finance");
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        for (Company c : companies) {
            Asset asset = assetService.getAssetByCompany(c);
            //List<FundPortfolio> portfolios = fundPortfolioService.getByAsset(asset);
            Set<Date> dates = fundPortfolioService.getDatesByAsset(asset);
            Bourse bourse = seleniumSurfer.findCompany(driver, c);
            if(!bourse.getBourse().equals("error")) {
                for (Date d : dates) {
                    String value = seleniumSurfer.surfForDate(driver, d);
                    if(!value.equals("error")) {
                        BourseValue bourseValue = new BourseValue();
                        bourseValue.setBourse(bourse.getBourse());
                        bourseValue.setCurrency(bourse.getCurrency());
                        bourseValue.setCompany(c.getName());
                        DateFormat format = new SimpleDateFormat("ddMMyyyy", Locale.ENGLISH);
                        String date = format.format(d);
                        bourseValue.setDate(date);
                        value = value.replaceAll(",", "").replaceAll("-", "");
                        bourseValue.setValue(Double.valueOf(value));
                        bourseValues.add(bourseValue);
                        logger.info("{} value on date {} = {}", c.getName(), d, value);
                        //System.out.println(f.getAsset().getName() + " value on date " + f.getDate() + " = " + value.replaceAll(",", "").replaceAll("-", ""));
                        if (bourseValues.size() % 100 == 0) {
                            generator.addValues(bourseValues, bourseValues.size());
                            logger.info("Generate SQL for {} in {}", bourseValues.size(), stopWatch);
                        }
                    }else logger.info(value);
                }
            } else logger.info("No data for {}", c.getName());
        }
        generator.addValues(bourseValues, bourseValues.size());
        logger.info("finished in {}", stopWatch);
        stopWatch.stop();
        driver.close();
    }

    private void compareResults() {
        List<FundPortfolio> portfolios = fundPortfolioService.getAll();
        int i = 0;
        for(FundPortfolio f : portfolios) {
            //logger.info("Value = {}, Shares = {}", f.getValue(), f.getShares());
            try {
                BourseAsset asset = bourseAssetService.getBourseAssetByAsset(f.getAsset());
                BourseAssetValue value = bourseAssetValueService.findByAssetAndDate(asset, f.getDate());
                //logger.info("Found BourseAssetValue = {}", );
                if (value != null) {
                    if (compareValues(f, value)) {
                        i++;
                    }
                }
            } catch (NoResultException e) {
                //logger.info("No BourseAsset for {}", f.getAsset().getName());
            }
        }
        logger.info("There are {} matches out of htmls values = {}", i, portfolios.size());
    }

    private boolean compareValues (FundPortfolio fundPortfolio, BourseAssetValue bourseAssetValue) {
        Long value = fundPortfolio.getValue();
        logger.info(bourseAssetValue.getCurrency());
        Double bourseValue = CurrencyConverter.CURRENCIES.get(bourseAssetValue.getCurrency()) * fundPortfolio.getShares() * bourseAssetValue.getValue() / 1000;
        bourseValue = Precision.round(bourseValue, 0);
        Long bValue = bourseValue.longValue();
        //boolean res = value - bValue < (fundPortfolio.getShares() / 1000);
        boolean res = value.equals(bValue);
        if (!res) {
            res = value.equals(bValue - 1);
        }
        if (!res) {
            res = value.equals(bValue + 1);
        }
        logger.info("Company {} : {} = {} result = {}", fundPortfolio.getAsset().getName(), value, bValue, res);
        return res;
    }

    public void init() {
        //compareResults();
        surfForFunds();
        //logger.info("TEST");
    }
}
