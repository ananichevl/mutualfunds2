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
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class NQParser implements Parser {
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
            if(elements.get(1).text().matches(".*\\d+.*")) {
                String s = elements.get(0).text().replaceAll(",", "").replaceAll("\\.", "");
                System.out.println(s.replaceAll("\\d", ""));
                String v = elements.get(2).text().replaceAll(",", "").replaceAll("\\$", "").replaceAll("[\\s|\\u00A0]+", "");
                /*System.out.println(elements.get(1).text().replaceAll(",", "").replaceAll("[\\s|\\u00A0]+", ""));
                System.out.println(elements.get(2).text().replaceAll(",", "").replaceAll("\\$", "").replaceAll("[\\s|\\u00A0]+", ""));
                */investments.add(new MFInvestment(s.replaceAll("\\d", "").replaceAll("'", "").trim(),
                        Long.valueOf(elements.get(1).text().replaceAll(",", "").replaceAll("[\\s|\\u00A0]+", "")),
                        Long.valueOf(v.matches(".*\\d+.*") ? v : "0")));
            }
        }

        return investments;
    }
}
