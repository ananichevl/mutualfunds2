package utils;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Утилитный класс для работы с файлами
 * <p>
 * Created by Nataliia Zolotovitckaia (EPAM) on 23.11.2016.
 */
public class FilesUtils {

    public static void clearDir(Path path) throws IOException {
        if (Files.exists(path)) {
            FileUtils.cleanDirectory(path.toFile());
        }
    }

    public static File createFile(Path path, String name) throws IOException {
        Path file = outputFile(path, name);
        Files.createDirectories(file.getParent());
        return file.toFile();
    }

    public static void deleteFile(Path output, String name) {
        Path file = outputFile(output, name);
        if (Files.exists(file)) {
            FileUtils.deleteQuietly(file.toFile());
        }
    }

    private static Path outputFile(Path output, String name) {
        return Paths.get(output + "/" + name);
    }
}
