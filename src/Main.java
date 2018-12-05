import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) throws IOException {

        String rootPath = Paths.get("").toAbsolutePath().toString();
        String subPath = "/src/";

        String file = rootPath + subPath + "teste.pas";
        String content = new String(Files.readAllBytes(Paths.get(file)));

        /*
        try {
            Parser p = new Parser(new PascalAnalizer(new FileReader(content)));
            Object result = p.parse().value;

            System.out.println("Compilacao concluida com sucesso...");
        } catch (Exception e) {
            e.printStackTrace();
        }
        */

    }

}
