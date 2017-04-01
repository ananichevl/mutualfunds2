package org.ananichev.generator;

import freemarker.template.TemplateException;
import org.ananichev.model.BourseValue;
import org.ananichev.model.MFInvestment;
import org.ananichev.utils.FreeMarkerHelper;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * Created by sbt-ananichev-ld on 16.02.2017.
 */
public class SQLGenerator implements Generator {

    public static String getFondName(String directory){
        String[] fond = directory.split("/");
        final String fondName = fond[fond.length - 1];
        return fondName;
    }

    public void createTable(final String directory) {
        File[] arrFiles = new File(directory).listFiles(new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.isFile();
            }
        });
        final List<File> allFiles = new ArrayList<File>(Arrays.asList(arrFiles));

        final List<String> columnNames = new ArrayList<String>();
        for(File f : allFiles) {
            String[] strings = f.getName().split("\\_");
            strings = strings[1].split("\\.");
            columnNames.add(strings[0]);
        }

        try {
            FreeMarkerHelper.process(Paths.get("target/output"), getFondName(directory) + "table.sql", "/table.fsql", new HashMap<String, Object>() {{
                put("fond", getFondName(directory));
                put("files", columnNames);
            }});
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }

    public void addRecords(final List<MFInvestment> investments, final String file, final String directory) {
        try {
            FreeMarkerHelper.process(Paths.get("target/output"), file + "update.sql", "/add_records.fsql", new HashMap<String, Object>() {{
                put("fond", getFondName(directory));
                put("file", file);
                put("investments", investments);
            }});
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }

    public void addValues(final List<BourseValue> bourseValues, int i) {
        try {
            FreeMarkerHelper.process(Paths.get("target/output"),"test_update" + i + ".sql", "/update_bourse.fsql", new HashMap<String, Object>() {{
                put("bourses", bourseValues);
            }});
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }
}
