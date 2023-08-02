public class EstudoVariaveis {
    //variável = container de dados
    //tipagem forte = definir o tipo de cada variável
    public static void main (String[] args){
        //para definir uma variável
        //<tipo> <nome> = <valor>;

        // Tipos primitivos: int, long, char, boolean, double, float
        //  Tipos não-primitivos: Strin, List, Array

        //Como declarar variáveis?
        int estoque = 150; // até 2 bilhões
        // L = Sufixo para representar o long
        long populacaoTerra = 79000000L; //até na casa dos quintilhões
        double salarioDev = 5500.99; // Até 15 casas decimais
        // F = sufixo para representar float
        float nota = 7.5F; //Até 7 casas de precisão
        boolean ativo = true; // true, false
        String nome = "Lucas Figueiredo"; //
        char letra = 'A'; // char = representa um único caractere

        //Tipagem forte

        int a = 1000;
        a = 2000; // retribuição/atualização
        // a =  "batata"; // impossível atribuir outro tipo

        System.out.println("Estoque: " + estoque);
        System.out.println("População da Terra: " + populacaoTerra);
        System.out.println(nome);
    }
}
