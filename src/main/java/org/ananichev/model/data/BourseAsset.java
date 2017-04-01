package org.ananichev.model.data;

import javax.persistence.*;

/**
 * Created by Леонид on 27.03.2017.
 */
@Entity
@Table(name = "BOURSE_ASSETS")
public class BourseAsset {
    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @OneToOne
    @JoinColumn(name = "asset_id")
    private Asset asset;

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
}
