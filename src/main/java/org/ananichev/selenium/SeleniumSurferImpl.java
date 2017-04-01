package org.ananichev.selenium;

import org.ananichev.model.Bourse;
import org.ananichev.model.data.Company;
import org.ananichev.model.data.FundPortfolio;
import org.apache.commons.lang.time.DateUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by user13 on 24.03.2017.
 */
public class SeleniumSurferImpl implements SeleniumSurfer{

    private Logger logger = LoggerFactory.getLogger(SeleniumSurferImpl.class);

    public String surfForCompanyAndDate(WebDriver driver, FundPortfolio portfolio) {
        logger.info("Trying to find price");
        int i = 0;
        String price = "error";
        Date date = portfolio.getDate();
        while (i < 10) {
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

    public String surfForDate(WebDriver webDriver, Date date) {
        logger.info("Trying to find price");
        int i = 0;
        String price = "error";
        while (i < 10) {
            price = getPrice(webDriver, date);
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

    public Bourse findCompany(WebDriver driver, Company company) {
        logger.info("Trying to find Company {}", company.getName());
        WebElement element = driver.findElement(By.name("q"));
        element.clear();
        element.sendKeys(company.getName());
        driver.findElement(By.id("gbqfb")).click();
        try {
            logger.info("Trying to click Historical prices");
            WebElement element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
            //TODO: Currency
            WebElement element2 = driver.findElement(By.xpath("//div[contains(text(), 'Currency')]"));
            logger.info(element2.getText());
            String currency = element2.getText();
            String[] strings = currency.split("\\s+");
            element1.click();
            element1 = driver.findElement(By.id("appbar"));
            List<WebElement> elements = element1.findElements(By.tagName("span"));
            String bourse = elements.get(1).getText();
            String[] s = bourse.split(":");
            return new Bourse(s[0].substring(1), strings[2]);
        } catch (Exception e) {
            try {
                logger.info("Company summary");
                WebElement element1 = driver.findElement(By.xpath("//a[contains(text(), 'Summary')]"));
                element1.click();
                return new Bourse("error", "error");
            }catch (Exception e1) {
                try {
                    logger.info("First link");
                    WebElement element1 = driver.findElement(By.id("rc-1"));
                    element1.click();
                    //System.out.println("Page title is: " + driver.getTitle());
                    element1 = driver.findElement(By.xpath("//a[contains(text(), 'Historical prices')]"));
                    WebElement element2 = driver.findElement(By.xpath("//div[contains(text(), 'Currency')]"));
                    logger.info(element2.getText());
                    String currency = element2.getText();
                    String[] strings = currency.split("\\s+");
                    element1.click();
                    element1 = driver.findElement(By.id("appbar"));
                    List<WebElement> elements = element1.findElements(By.tagName("span"));
                    String bourse = elements.get(1).getText();
                    String[] s = bourse.split(":");
                    return new Bourse(s[0].substring(1), strings[2]);
                }catch (Exception e2) {
                    return new Bourse("error", "error");
                }
            }
        }
    }

    private String getPrice(WebDriver driver, Date date) {
        String data = new SimpleDateFormat("MM.dd.yyyy").format(date);
        try {
            logger.info("Setting date {}", data);
            WebElement element1 = driver.findElement(By.name("startdate"));
            element1.clear();
            element1.sendKeys(data);
            element1 = driver.findElement(By.name("enddate"));
            element1.clear();
            element1.sendKeys(data);
            element1 = driver.findElement(By.id("hfs"));
            logger.info("Click update");
            element1.click();
            try {
                logger.info("Trying to get price");
                WebElement element2 = driver.findElement(By.id("prices"));
                List<WebElement> elements = element2.findElements(By.tagName("tr"));
                return elements.get(1).findElements(By.tagName("td")).get(4).getText();
            }catch (Exception e) {
                return "error";
            }
        } catch (Exception e) {
            return "error";
        }
    }
}
