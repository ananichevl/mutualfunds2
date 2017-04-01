package org.ananichev.model.data.service;

import org.ananichev.model.data.Asset;
import org.ananichev.model.data.Company;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 * Created by Леонид on 24.03.2017.
 */
public class AssetService {
    public EntityManager entityManager = Persistence.createEntityManagerFactory("Leonid").createEntityManager();

    public Asset getAssetByCompany(Company company){
        Query query = entityManager.createNamedQuery("Asset.findByCompany", Asset.class);
        query.setParameter("company", company);
        return (Asset) query.getSingleResult();
    }

    public Asset getById(Long id) {
        return entityManager.find(Asset.class, id);
    }
}
