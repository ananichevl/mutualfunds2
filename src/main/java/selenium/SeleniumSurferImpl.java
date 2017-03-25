package selenium;

import model.data.Company;
import model.data.FundPortfolio;
import org.apache.commons.lang.time.DateUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by user13 on 24.03.2017.
 */
public class SeleniumSurferImpl implements SeleniumSurfer{

    public String surfForCompanyAndDate(WebDriver driver, FundPortfolio portfolio) {
        int i = 0;
        String price = "error";
        Date date = portfolio.getDate();
        while (i < 3) {
            price = getPrice(driver, date);
            i++;
            if(!price.equals("error")) {
                break;
            }else {
                date = DateUtils.addDays(date, -1);
            }
        }
        //System.out.println("Page title is: " + driver.getTitle());
        return price;
    }

    public String findCompany(WebDriver driver, Company company) {
        WebElement element = driver.findElement(By.name("q"));
        element.clear();
        element.sendKeys(company.getName());
        driver.findElement(By.id("gbqfb")).click();
        try {
            WebElement element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
            element1.click();
            element1 = driver.findElement(By.id("appbar"));
            List<WebElement> elements = element1.findElements(By.tagName("span"));
            String bourse = elements.get(1).getText();
            String[] s = bourse.split(":");
            return s[0].substring(1);
        } catch (Exception e) {
            try {
                WebElement element1 = driver.findElement(By.id("rc-1"));
                element1.click();
                //System.out.println("Page title is: " + driver.getTitle());
                element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
                element1.click();
                element1 = driver.findElement(By.id("appbar"));
                List<WebElement> elements = element1.findElements(By.tagName("span"));
                String bourse = elements.get(1).getText();
                String[] s = bourse.split(":");
                return s[0].substring(1);
            }catch (Exception e1) {
                return "error";
            }
        }
    }

    private String getPrice(WebDriver driver, Date date) {
        String data = new SimpleDateFormat("MM.dd.yyyy").format(date);
        WebElement element1 = driver.findElement(By.name("startdate"));
        element1.clear();
        element1.sendKeys(data);
        element1 = driver.findElement(By.name("enddate"));
        element1.clear();
        element1.sendKeys(data);
        element1 = driver.findElement(By.id("hfs"));
        element1.click();

        try {
            WebElement element2 = driver.findElement(By.id("prices"));
            List<WebElement> elements = element2.findElements(By.tagName("tr"));
            return elements.get(1).findElements(By.tagName("td")).get(4).getText();
        }catch (Exception e) {
            return "error";
        }
    }
}
