package selenium;

import io.github.bonigarcia.wdm.ChromeDriverManager;
import model.data.Company;
import org.apache.commons.lang.time.DateUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by user13 on 24.03.2017.
 */
public class SeleniumSurferImpl implements SeleniumSurfer{

    public String surfForCompanyAndDate(WebDriver driver, String company, Date date) {
        driver.get("https://www.google.com/finance");
        WebElement element = driver.findElement(By.name("q"));
        element.clear();
        element.sendKeys(company);
        driver.findElement(By.id("gbqfb")).click();
        String data = new SimpleDateFormat("MM.dd.yyyy").format(DateUtils.addDays(date, 1));
        try {
            WebElement element1 = driver.findElement(By.id("rc-1"));
            element1.click();
            //System.out.println("Page title is: " + driver.getTitle());
            element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
            element1.click();
            //System.out.println("Page title is: " + driver.getTitle());
            element1 = driver.findElement(By.name("startdate"));
            element1.clear();
            element1.sendKeys(data);
            element1 = driver.findElement(By.name("enddate"));
            element1.clear();
            element1.sendKeys(data);
            element1 = driver.findElement(By.id("hfs"));
            element1.click();

            WebElement element2 = driver.findElement(By.id("prices"));
            List<WebElement> elements = element2.findElements(By.tagName("tr"));
            return elements.get(1).findElements(By.tagName("td")).get(2).getText();
        }catch (Exception e) {
            try{
                WebElement element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
                element1.click();
                //System.out.println("Page title is: " + driver.getTitle());
                element1 = driver.findElement(By.name("startdate"));
                element1.clear();
                element1.sendKeys(data);
                element1 = driver.findElement(By.name("enddate"));
                element1.clear();
                element1.sendKeys(data);
                element1 = driver.findElement(By.id("hfs"));
                element1.click();

                WebElement element2 = driver.findElement(By.id("prices"));
                List<WebElement> elements = element2.findElements(By.tagName("tr"));
                return elements.get(1).findElements(By.tagName("td")).get(2).getText();
            }catch (Exception e1) {

            }
            return "error";
        }
    }
}
