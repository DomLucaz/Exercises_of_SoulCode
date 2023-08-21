package aula_2607;

public class EstudoVariaveis {
    // variável = conteiner de dados
    // tipagem forte = definir o tipo de cada variável
    public static void main(String[] args) {
        // para definir uma variável
        // <tipo> <nome> = <valor>;

        // Tipos primitivos (surgiram com a linguagem): int, long, char, boolean, double, float
        // Tipos não-primitivos (foram implementados depois): String, List

        // Como declarar variáveis?
        int estoque = 150; // até 2 bilhões
        // L = sufixo para representar long
        long populacaoTerra = 7900000000L; // até na casa dos quintilhões
        double salarioDev = 5500.99; // até 15 casas de precisão
        // F = sufixo para representar float
        float nota = 7.5F; // até 7 casas de precisão
        boolean ativo = true; // true, false
        String nome = "José Almir"; // usamos aspas duplas sempre
        char letra = 'A'; // char = representa um único caractere

        // Tipagem forte
        int a = 1000;
        a = 2000; // reatribuição/atualização
        // a = "batata"; // impossível atribuir outro tipo

        System.out.println("Estoque: " + estoque);
        System.out.println("População da terra: " + populacaoTerra);
        System.out.println(nome);
    }
}