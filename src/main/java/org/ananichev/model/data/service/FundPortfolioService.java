package org.ananichev.model.data.service;

import org.ananichev.model.data.Asset;
import org.ananichev.model.data.Company;
import org.ananichev.model.data.Fund;
import org.ananichev.model.data.FundPortfolio;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Леонид on 24.03.2017.
 */
public class FundPortfolioService {
    public EntityManager entityManager = Persistence.createEntityManagerFactory("Leonid").createEntityManager();

    public List<FundPortfolio> getByAsset(Asset asset) {
        Query query = entityManager.createQuery("select p from FundPortfolio p where p.asset = :asset");
        query.setParameter("asset", asset);
        return query.getResultList();
    }

    public List<FundPortfolio> getAll(){
        TypedQuery<FundPortfolio> namedQuery = entityManager.createNamedQuery("FundPortfolio.getAll", FundPortfolio.class);
        return namedQuery.getResultList();
    }

    public Set<Date> getDatesByAsset(Asset asset){
        Query query = entityManager.createQuery("select p.date from FundPortfolio p where p.fund in (select f.fund from FundPortfolio f where f.asset = :asset)");
        query.setParameter("asset", asset);
        return new HashSet<Date>(query.getResultList());
    }
}
