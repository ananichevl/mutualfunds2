package org.ananichev.parser;

import org.ananichev.model.MFInvestment;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Леонид on 19.02.2017.
 */
public class NQOldParser implements Parser {
    public List<MFInvestment> parse(String file) {
        System.out.println("Parsing" + file);
        List<MFInvestment> investments = new ArrayList<MFInvestment>();

        Document doc = null;
        try {
            doc = Jsoup.parse(new File(file), "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Elements els = doc.getElementsByTag("tr");
        for(Element e : els) {
            Elements elements = e.getElementsByTag("td");
            if(elements.get(3).text().matches(".*\\d+.*") && !elements.get(3).text().contains("—") && !elements.get(7).text().contains("—")) {
                String s = elements.get(0).getElementsByTag("font").text().replaceAll(",", "").replaceAll("\\.", "");
                investments.add(new MFInvestment(s.replaceAll("\\d", "").replaceAll("'", "").trim(),
                        Long.valueOf(elements.get(3).text().replaceAll(",", "").replaceAll("[\\s|\\u00A0]+", "")),
                        Long.valueOf(elements.get(7).text().replaceAll(",", "").replaceAll("\\$", "").replaceAll("[\\s|\\u00A0]+", ""))));
                /*System.out.println(elements.get(0).text());*/
            }
        }

        return investments;
    }
}
