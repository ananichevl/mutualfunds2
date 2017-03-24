package model.data;

import javax.persistence.*;

/**
 * Created by Леонид on 24.03.2017.
 */
@Entity
@Table(name = "assets")
@NamedQuery(name = "Asset.findByCompany", query = "SELECT a from Asset a where a.company = :company")
public class Asset {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "asset_name")
    private String name;

    @OneToOne
    @JoinColumn(name = "company_id")
    private Company company;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }
}
