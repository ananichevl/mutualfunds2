package org.ananichev.model;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class MFInvestment {
    private String company;
    private Long shares;
    private Long value;

    public MFInvestment(String company, Long shares, Long value) {
        this.company = company;
        this.shares = shares;
        this.value = value;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Long getShares() {
        return shares;
    }

    public void setShares(Long shares) {
        this.shares = shares;
    }

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
    }
}
