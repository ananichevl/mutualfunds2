package org.ananichev.model.data;

import javax.persistence.*;

/**
 * Created by Леонид on 23.03.2017.
 */
@Entity
@Table(name = "COMPANIES")
@NamedQuery(name = "Company.getAll", query = "SELECT c from Company c")
public class Company {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "code")
    private Long code;

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

    public Long getCode() {
        return code;
    }

    public void setCode(Long code) {
        this.code = code;
    }
}
