import generator.Generator;
import generator.SQLGenerator;
import io.github.bonigarcia.wdm.ChromeDriverManager;
import model.MFInvestment;
import model.data.Asset;
import model.data.Company;
import model.data.FundPortfolio;
import model.data.service.AssetService;
import model.data.service.CompanyService;
import model.data.service.FundPortfolioService;
import org.apache.commons.lang.time.DateUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import parser.NQOldParser;
import parser.NQParser;
import parser.Parser;
import selenium.SeleniumSurfer;
import selenium.SeleniumSurferImpl;

import java.io.File;
import java.io.FileFilter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class MFApplication {
    public static void main(String[] args) {
        //CompanyService companyService = new CompanyService();
        //AssetService assetService = new AssetService();
        //FundPortfolioService fundPortfolioService = new FundPortfolioService();
        //List<Company> companies = companyService.getAll();
        Parser p = new NQParser();
        Parser p1 = new NQOldParser();
        ChromeDriverManager.getInstance().setup();
        WebDriver driver = new ChromeDriver();
        Generator generator = new SQLGenerator();
        String directory = "src/main/resources/htmls/washingtonmutual";
        List<MFInvestment> investments;
        SeleniumSurfer seleniumSurfer = new SeleniumSurferImpl();
        //generator.createTable(directory);

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
                investments = p1.parse(f.getAbsolutePath());
                generator.addRecords(investments, strings[0], directory);
                for (MFInvestment investment : investments) {
                    DateFormat format = new SimpleDateFormat("ddMMyyyy", Locale.ENGLISH);
                    try {
                        Date date = format.parse("30122012");
                        System.out.println(seleniumSurfer.surfForCompanyAndDate(driver, investment.getCompany(), date));
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            }else {
                investments = p.parse(f.getAbsolutePath());
                generator.addRecords(investments, strings[0], directory);
                for (MFInvestment investment : investments) {
                    DateFormat format = new SimpleDateFormat("ddMMyyyy", Locale.ENGLISH);
                    try {
                        Date date = format.parse("30122012");
                        System.out.println(seleniumSurfer.surfForCompanyAndDate(driver, investment.getCompany(), date));
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

    }
}
