package model;

import java.util.Date;

/**
 * Created by Леонид on 24.03.2017.
 */
public class BourseValue {
    private String company;
    private String bourse;
    private Double value;
    private Date date;

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getBourse() {
        return bourse;
    }

    public void setBourse(String bourse) {
        this.bourse = bourse;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
