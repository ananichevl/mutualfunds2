package org.ananichev.model.data;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Леонид on 27.03.2017.
 */
@Entity
@Table(name = "BOURSE_ASSETS_VALUES")
public class BourseAssetValue {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long Id;

    @ManyToOne
    @JoinColumn(name = "bourse_asset_id")
    private BourseAsset bourseAsset;

    @Column(name = "value")
    private Double value;

    @Column(name = "info_date")
    private Date date;

    @Column(name = "currency")
    private String currency;

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public BourseAsset getBourseAsset() {
        return bourseAsset;
    }

    public void setBourseAsset(BourseAsset bourseAsset) {
        this.bourseAsset = bourseAsset;
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

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }
}
