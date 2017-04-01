package org.ananichev.utils;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Леонид on 29.03.2017.
 */
public class CurrencyConverter {
    public static final Map<String, Double> CURRENCIES = createMap();

    private static Map<String, Double> createMap() {
        Map<String, Double> map = new HashMap<String, Double>();
        map.put("EUR", 1.075945);
        map.put("TRY", 0.273905);
        map.put("IDR", 0.000075);
        map.put("RUB", 0.017653);
        map.put("PLN", 0.254664);
        map.put("ILA", 0.276306);
        map.put("NZD", 0.70329);
        map.put("INR", 0.015431);
        map.put("SEK", 0.112662);
        map.put("ZAC", 0.00076);
        map.put("JPY", 0.009007);
        map.put("KRW", 0.000899);
        map.put("CNY", 0.145138);
        map.put("SGD", 0.71736);
        map.put("TWD", 0.033056);
        map.put("NOK", 0.117541);
        map.put("HKD", 0.128716);
        map.put("GBX", 0.013);
        map.put("CHF", 1.003512);
        map.put("THB", 0.02907);
        map.put("DKK", 0.144603);
        map.put("USD", 1.0);
        map.put("MYR", 0.226296);
        map.put("AUD", 0.7672);
        map.put("CAD", 0.7501);
        map.put("MXN", 0.053301);
        return Collections.unmodifiableMap(map);
    }
}
