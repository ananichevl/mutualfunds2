package org.ananichev.selenium;

import org.ananichev.model.Bourse;
import org.ananichev.model.data.Company;
import org.ananichev.model.data.FundPortfolio;
import org.openqa.selenium.WebDriver;

import java.util.Date;

/**
 * Created by user13 on 24.03.2017.
 */
public interface SeleniumSurfer {
    String surfForCompanyAndDate(WebDriver webDriver, FundPortfolio portfolio);
    String surfForDate(WebDriver webDriver, Date date);
    Bourse findCompany(WebDriver driver, Company company);
}
