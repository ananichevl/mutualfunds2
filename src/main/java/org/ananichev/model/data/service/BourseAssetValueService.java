package org.ananichev.model.data.service;

import org.ananichev.model.data.BourseAsset;
import org.ananichev.model.data.BourseAssetValue;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.Date;
import java.util.List;

/**
 * Created by Леонид on 27.03.2017.
 */
public class BourseAssetValueService {
    public EntityManager entityManager = Persistence.createEntityManagerFactory("Leonid").createEntityManager();

    public BourseAssetValue findByAssetAndDate(BourseAsset bourseAsset, Date date){
        Query query = entityManager.createQuery("select b from BourseAssetValue b where b.bourseAsset = :bourseAsset AND b.date =  :date");
        query.setParameter("bourseAsset", bourseAsset);
        query.setParameter("date", date);
        List<BourseAssetValue> list = query.getResultList();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }
}
