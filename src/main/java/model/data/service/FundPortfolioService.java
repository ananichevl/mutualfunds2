package model.data.service;

import model.data.Asset;
import model.data.FundPortfolio;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

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
}
