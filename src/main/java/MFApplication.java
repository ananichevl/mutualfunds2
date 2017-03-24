import generator.Generator;
import generator.SQLGenerator;
import io.github.bonigarcia.wdm.ChromeDriverManager;
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

import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class MFApplication {
    public static void main(String[] args) {
        CompanyService companyService = new CompanyService();
        AssetService assetService = new AssetService();
        FundPortfolioService fundPortfolioService = new FundPortfolioService();
        List<Company> companies = companyService.getAll();
        ChromeDriverManager.getInstance().setup();
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.google.com/finance");
        int i = 0;
        for(Company c : companies) {
            Asset a = assetService.getAssetByCompany(c);
            List<FundPortfolio> fundPortfolios = fundPortfolioService.getByAsset(a);
            for(FundPortfolio f : fundPortfolios) {
                Date fdate = f.getDate();
                String date = new SimpleDateFormat("MM.dd.yyyy").format(fdate);
                System.out.println(new SimpleDateFormat("MM.dd.yyyy").format(f.getDate()));
                WebElement element = driver.findElement(By.name("q"));
                //System.out.println(c.getName());
                element.clear();
                element.sendKeys(c.getName());
                driver.findElement(By.id("gbqfb")).click();
                try{
                    WebElement element1 = driver.findElement(By.id("rc-1"));
                    element1.click();
                    //System.out.println("Page title is: " + driver.getTitle());
                    element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
                    element1.click();
                    //System.out.println("Page title is: " + driver.getTitle());
                    element1 = driver.findElement(By.name("startdate"));
                    element1.clear();
                    element1.sendKeys(date);
                    element1 = driver.findElement(By.name("enddate"));
                    element1.clear();
                    element1.sendKeys(date);
                    element1 = driver.findElement(By.id("hfs"));
                    element1.click();
                    try{
                        WebElement element2 = driver.findElement(By.id("prices"));
                        List<WebElement> elements = element2.findElements(By.tagName("tr"));
                        System.out.println(elements.get(1).findElements(By.tagName("td")).get(2));
                        System.out.println("1");
                    }catch (Exception e){
                        date = new SimpleDateFormat("MM.dd.yyyy").format(DateUtils.addDays(fdate, 1));
                        element1 = driver.findElement(By.name("startdate"));
                        element1.clear();
                        element1.sendKeys(date);
                        element1 = driver.findElement(By.name("enddate"));
                        element1.clear();
                        element1.sendKeys(date);
                        element1 = driver.findElement(By.id("hfs"));
                        element1.click();
                        try {
                            WebElement element2 = driver.findElement(By.id("prices"));
                            List<WebElement> elements = element2.findElements(By.tagName("tr"));
                            System.out.println(elements.get(1).findElements(By.tagName("td")).get(2));
                            System.out.println("1");
                        }catch (Exception e1) {
                            date = new SimpleDateFormat("MM.dd.yyyy").format(DateUtils.addDays(fdate, -1));
                            element1 = driver.findElement(By.name("startdate"));
                            element1.clear();
                            element1.sendKeys(date);
                            element1 = driver.findElement(By.name("enddate"));
                            element1.clear();
                            element1.sendKeys(date);
                            element1 = driver.findElement(By.id("hfs"));
                            element1.click();
                            WebElement element2 = driver.findElement(By.id("prices"));
                            List<WebElement> elements = element2.findElements(By.tagName("tr"));
                            System.out.println(elements.get(1).findElements(By.tagName("td")).get(2).getText());
                            System.out.println("1");
                        }
                    }
                }catch (Exception e){
                    System.out.println("error");
                    i++;
                }
            }
        }
        System.out.println(i);
        driver.close();
        /*Parser p = new NQParser();
        Parser p1 = new NQOldParser();
        Generator generator = new SQLGenerator();
        String directory = "src/main/resources/htmls/washingtonmutual";
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
                generator.addRecords(p1.parse(f.getAbsolutePath()), strings[0], directory);
            }else {
                generator.addRecords(p.parse(f.getAbsolutePath()), strings[0], directory);
            }
        }*/
    }
}
