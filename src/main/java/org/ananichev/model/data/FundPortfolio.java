package org.ananichev.model.data;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Леонид on 24.03.2017.
 */
@Entity
@Table(name = "funds_portfolio")
@NamedQuery(name = "FundPortfolio.getAll", query = "SELECT f from FundPortfolio f")
public class FundPortfolio {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "asset_id")
    private Asset asset;

    @ManyToOne
    @JoinColumn(name = "fund_id")
    private Fund fund;

    @Column(name = "report_date")
    private Date date;

    @Column(name = "value")
    private Long value;

    @Column(name = "shares")
    private Long shares;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Asset getAsset() {
        return asset;
    }

    public void setAsset(Asset asset) {
        this.asset = asset;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
    }

    public Long getShares() {
        return shares;
    }

    public void setShares(Long shares) {
        this.shares = shares;
    }
}
