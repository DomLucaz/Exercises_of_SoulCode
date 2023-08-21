package aula_2807;

import java.util.Scanner;

public class EstudoStrings {

    public static void main(String[] args) {
//        String java = new String("Java");
//        String java = "Java"; // um texto é um objeto
//        System.out.println(java.toLowerCase()); // minuscula
//        System.out.println(java.toUpperCase()); // maiuscula
//        System.out.println(java.charAt(3)); // caractere com base na sua posição
//        System.out.println(java.indexOf("va")); // indice do primeiro caractere da substring
//        System.out.println(java.replace("v", "c")); // subtituir o "v" por "c"
//        System.out.println(java.replaceAll("a", "i"));
//        System.out.println(java.substring(2, 4)); // indice incial, indice final + 1
//        System.out.println(java.length()); // tamanho do texto
//
//        String nome1 = "Estefane";
//        String nome2 = "EsteFane";
//        System.out.println(nome1 == nome2); // compara os objetos nome1 e nome2
//        System.out.println(nome1.equals(nome2)); // compara os textos de nome1 e nome2
//        System.out.println(nome1.equalsIgnoreCase(nome2));
//        System.out.println("texto".equals("texto2") && "texto2".equals("texto3"));

        Scanner scanner = new Scanner(System.in);

        String texto = "Vamos para o break retornamos as 10:35.";
        System.out.println("Digite uma palavra:");
        String palavra = scanner.nextLine();

        if(palavra.isEmpty()) { // isBlank
            System.out.println("Conteúdo vazio");
        }
        else if(texto.contains(palavra)) {
            System.out.println("Contém");
        }
        else {
            System.out.println("Não contém");
        }

//        System.out.println(" ".isEmpty()); // false
//        System.out.println(" ".isBlank()); // true (considera os espaços)
    }

}