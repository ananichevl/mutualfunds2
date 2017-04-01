package org.ananichev.model;

/**
 * Created by Леонид on 28.03.2017.
 */
public class Bourse {
    private String bourse;
    private String currency;

    public Bourse(String bourse, String currency) {
        this.bourse = bourse;
        this.currency = currency;
    }

    public String getBourse() {
        return bourse;
    }

    public void setBourse(String bourse) {
        this.bourse = bourse;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }
}
