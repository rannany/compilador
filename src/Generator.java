import java.io.File;
import java.nio.file.Paths;

public class Generator {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/";

        String file = rootPath + subPath + "pascal_lang.flex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}
