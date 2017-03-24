package parser;

import model.MFInvestment;

import java.util.List;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public interface Parser {
    List<MFInvestment> parse(String file);
}
