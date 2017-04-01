package org.ananichev.model.data.service;

import org.ananichev.model.data.Asset;
import org.ananichev.model.data.BourseAsset;
import org.ananichev.model.data.Company;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 * Created by Леонид on 27.03.2017.
 */
public class BourseAssetService {
    public EntityManager entityManager = Persistence.createEntityManagerFactory("Leonid").createEntityManager();

    public BourseAsset getBourseAssetByAsset(Asset asset) throws NoResultException{
        Query query = entityManager.createQuery("select b from BourseAsset b where b.asset = :asset");
        query.setParameter("asset", asset);
        return (BourseAsset) query.getSingleResult();
    }
}
