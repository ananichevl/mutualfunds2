package selenium;

import model.data.Company;
import org.openqa.selenium.WebDriver;

import java.util.Date;

/**
 * Created by user13 on 24.03.2017.
 */
public interface SeleniumSurfer {
    String surfForCompanyAndDate(WebDriver webDriver, String company, Date date);
}
