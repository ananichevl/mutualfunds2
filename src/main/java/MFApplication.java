import generator.Generator;
import generator.SQLGenerator;
import io.github.bonigarcia.wdm.FirefoxDriverManager;
import model.BourseValue;
import model.MFInvestment;
import org.apache.commons.lang.time.StopWatch;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import parser.NQOldParser;
import parser.NQParser;
import parser.Parser;
import selenium.SeleniumSurfer;
import selenium.SeleniumSurferImpl;


import java.util.*;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class MFApplication {
    public static void main(String[] args) {
        List<BourseValue> bourseValues = new ArrayList<BourseValue>();
        //CompanyService companyService = new CompanyService();
        //AssetService assetService = new AssetService();
        //FundPortfolioService fundPortfolioService = new FundPortfolioService();
        //List<Company> companies = companyService.getAll();
        Parser p = new NQParser();
        Parser p1 = new NQOldParser();
        //ChromeDriverManager.getInstance().setup();
        FirefoxDriverManager.getInstance().setup();
        //System.setProperty("webdriver.gecko.driver","C:\\Users\\Леонид\\.m2\\repository\\webdriver\\geckodriver\\win64\\0.15.0/geckodriver.exe");
        //WebDriver driver = new FirefoxDriver();
        /*File pathToBinary = new File("C:/Users/Леонид/.m2/repository/webdriver/geckodriver/win64/0.15.0/geckodriver.exe");
        FirefoxBinary ffBinary = new FirefoxBinary(pathToBinary);
        FirefoxProfile firefoxProfile = new FirefoxProfile();*/
        WebDriver driver = new FirefoxDriver();
        //WebDriver driver = new FirefoxDriver();
        Generator generator = new SQLGenerator();
        String directory = "src/main/resources/htmls/washingtonmutual";
        List<MFInvestment> investments;
        SeleniumSurfer seleniumSurfer = new SeleniumSurferImpl();
        //generator.createTable(directory);

        driver.get("https://www.google.com/finance");

        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        /*for (Company c : companies) {
            Asset asset = assetService.getAssetByCompany(c);
            List<FundPortfolio> portfolios = fundPortfolioService.getByAsset(asset);
            String bourse = seleniumSurfer.findCompany(driver, c);
            if(!bourse.equals("error")) {
                for (FundPortfolio f : portfolios) {
                    String value = seleniumSurfer.surfForCompanyAndDate(driver, f);
                    if(!value.equals("error")) {
                        BourseValue bourseValue = new BourseValue();
                        bourseValue.setBourse(bourse);
                        bourseValue.setCompany(c.getName());
                        bourseValue.setDate(f.getDate());
                        bourseValue.setValue(Double.valueOf(value.replaceAll(",", "").replaceAll("-", "")));
                        bourseValues.add(bourseValue);
                        System.out.println(f.getAsset().getName() + " value on date " + f.getDate() + " = " + value);
                    }else System.out.println(value);
                }
            } else System.out.println("No data for " + c.getName());
        }*/

        System.out.println("finished" + stopWatch);
        stopWatch.stop();
        /*File[] arrFiles = new File(directory).listFiles(new FileFilter() {
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
        }*/

    }
}
