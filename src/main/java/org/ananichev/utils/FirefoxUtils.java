package org.ananichev.utils;

import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by Леонид on 25.03.2017.
 */
public class FirefoxUtils {
    public static WebElement retryingFindClick(WebDriver driver, By by) {
        WebElement result = null;
        int attempts = 0;
        while(attempts < 2) {
            try {
                result = driver.findElement(by);
                break;
            } catch(StaleElementReferenceException e) {
            }
            attempts++;
        }
        return result;
    }
}
