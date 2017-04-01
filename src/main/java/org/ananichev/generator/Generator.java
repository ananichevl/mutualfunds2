package org.ananichev.generator;

import org.ananichev.model.BourseValue;
import org.ananichev.model.MFInvestment;

import java.util.List;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public interface Generator {
    void createTable(String table);
    void addRecords(List<MFInvestment> investments, String file, String directory);
    void addValues(List<BourseValue> bourseValues, int i);
}
