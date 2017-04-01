package org.ananichev;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class MFApplication {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans.xml");
        /*List<BourseValue> bourseValues = new ArrayList<BourseValue>();
        CompanyService companyService = new CompanyService();
        AssetService assetService = new AssetService();
        FundPortfolioService fundPortfolioService = new FundPortfolioService();
        List<Company> companies = companyService.getAll();
        Parser p = new NQParser();
        Parser p1 = new NQOldParser();
        ChromeDriverManager.getInstance().setup();
        //FirefoxDriverManager.getInstance().setup();
        //System.setProperty("webdriver.gecko.driver","C:\\Users\\Леонид\\.m2\\repository\\webdriver\\geckodriver\\win64\\0.15.0/geckodriver.exe");
        //WebDriver driver = new FirefoxDriver();
        //File pathToBinary = new File("C:/Users/Леонид/.m2/repository/webdriver/geckodriver/win64/0.15.0/geckodriver.exe");
        //FirefoxBinary ffBinary = new FirefoxBinary(pathToBinary);
        //FirefoxProfile firefoxProfile = new FirefoxProfile();
        WebDriver driver = new ChromeDriver();
        //WebDriver driver = new FirefoxDriver();
        Generator org.ananichev.generator = new SQLGenerator();
        String directory = "src/main/resources/htmls/washingtonmutual";
        List<MFInvestment> investments;
        SeleniumSurfer seleniumSurfer = new SeleniumSurferImpl();
        //org.ananichev.generator.createTable(directory);

        driver.get("https://www.google.com/finance");

        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        *//*for (Company c : companies) {
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
                        DateFormat format = new SimpleDateFormat("ddMMyyyy", Locale.ENGLISH);
                        String date = format.format(f.getDate());
                        bourseValue.setDate(date);
                        value = value.replaceAll(",", "").replaceAll("-", "");
                        bourseValue.setValue(Double.valueOf(value));
                        bourseValues.add(bourseValue);
                        System.out.println(f.getAsset().getName() + " value on date " + f.getDate() + " = " + value.replaceAll(",", "").replaceAll("-", ""));
                        if (bourseValues.size() % 100 == 0) {
                            org.ananichev.generator.addValues(bourseValues, bourseValues.size());
                            System.out.println("Generate SQL");
                        }
                    }else System.out.println(value);
                }
            } else System.out.println("No data for " + c.getName());
        }*//*

        *//*BourseValue bourseValue = new BourseValue();
        bourseValue.setBourse("NYSE");
        bourseValue.setCompany("Fortum Oyj");
        bourseValue.setDate("30122012");
        bourseValue.setValue(30.12);
        bourseValues.add(bourseValue);
        org.ananichev.generator.addValues(bourseValues);*//*

        org.ananichev.generator.addValues(bourseValues, bourseValues.size());
        System.out.println("finished" + stopWatch);
        stopWatch.stop();
        driver.close();
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
                org.ananichev.generator.addRecords(investments, strings[0], directory);
            }else {
                investments = p.parse(f.getAbsolutePath());
                org.ananichev.generator.addRecords(investments, strings[0], directory);
            }
        }
*/
    }
}
