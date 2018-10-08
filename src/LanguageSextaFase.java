import java.io.IOException;
import java.io.StringReader;
import java.nio.file.Files;
import java.nio.file.Paths;

public class LanguageSextaFase {
    public static void main(String[] args) throws IOException {
        String rootPath = Paths.get("").toAbsolutePath().toString();
        String subPath = "/src/";

        String file = rootPath + subPath + "teste.pas";
        String content = new String(Files.readAllBytes(Paths.get(file)));

        PascalAnalizer lexical = new PascalAnalizer(new StringReader(content));
        lexical.yylex();
    }
}
