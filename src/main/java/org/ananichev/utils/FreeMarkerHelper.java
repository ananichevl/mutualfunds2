package org.ananichev.utils;

import freemarker.cache.ClassTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Map;

/**
 * Создание конфигуратора `FreeMarker`
 */
public class FreeMarkerHelper {

    private static volatile Configuration cfg;

    public static File process(Path output, String file, String template, Map<String, ?> dataModel) throws IOException, TemplateException {
        Template tmpl = getConfig().getTemplate(template);
        File generatedFile = FilesUtils.createFile(output, file);
        tmpl.process(dataModel, new FileWriter(generatedFile));
        return generatedFile;
    }

    private static synchronized Configuration getConfig() {
        if (cfg == null) {
            cfg = new Configuration(Configuration.VERSION_2_3_23);
            cfg.setTemplateLoader(new ClassTemplateLoader(FreeMarkerHelper.class, "/templates"));
        }
        return cfg;
    }
}
