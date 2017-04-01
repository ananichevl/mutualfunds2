package org.ananichev.model.data.service;

import org.ananichev.model.data.Company;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Леонид on 23.03.2017.
 */
public class CompanyService {
    public EntityManager entityManager = Persistence.createEntityManagerFactory("Leonid").createEntityManager();

    public List<Company> getAll(){
        TypedQuery<Company> namedQuery = entityManager.createNamedQuery("Company.getAll", Company.class);
        return namedQuery.getResultList();
    }


}
