import java.util.Scanner;

public class EstudoEstruturas {
    public static void main(String[] args) {
        // Scanner = vai permitir a leitura de dados do teclado
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite o seu nome: ");
        String nome = entrada.nextLine(); // Aguarda o texto digitado pelo usuário

        System.out.print("Digite sua altura (em metros): ");
        double altura = entrada.nextDouble(); // digite o número com vingula: 1,78

        // Exercicio: Leia o peso da pessoa.
        System.out.print("Digite o seu peso (EM KG): ");
        double peso = entrada.nextDouble();

        // Calcule o IMC.

        double imc = peso / Math.pow(altura, 2);
        // Verifique a situacao do imc calculador

        if (imc < 17) {
            System.out.println("Muito abaixo do peso.");
        } else if (imc >= 17 && imc < 18.5) {
            System.out.println("Abaixo do peso.");
        } else if (imc >= 18.5 && imc < 25) {
            System.out.println("Peso normal.");
        } else if (imc >= 25 && imc < 30) {
            System.out.println("Acima do Peso");
        } else if (imc >= 30 && imc < 35) {
            System.out.println("Obesidade I");
        } else if (imc >= 35 && imc < 40) {
            System.out.println("Obesidade II");
        } else {
            System.out.println("Obesidade III");
        }

        System.out.println("Selecione uma dieta (1 a 3)");
        System.out.println("1 - Água");
        System.out.println("2 - Fruta");
        System.out.println("3 - Batata");

        int opcao = entrada.nextInt();

        switch (opcao) {
            case 1:
                System.out.println("Você escolheu a dieta da água!");
                break;
            case 2:
                System.out.println("Você escolheu a dieta da Fruta");
                break;
            case 3:
                System.out.println("Você escolheu a dieta da batata!");
                break;
            default:
                System.out.println("Escolha uma dieta valida");
                break;
        }

        System.out.println("Digite sua idade: ");
        int idade = entrada.nextInt();

        String mensagem = idade >= 18 ? "Você é maior de idade" : "Você é menor de idade";
        System.out.println(mensagem);

        // Repetição
        // Inicio
        // condição de parada
        // atualização de valor

        System.out.println("Digite quantos alimentos você come?");
        int total = entrada.nextInt();

        for (int i = 0; i < total; i++) {
            System.out.println("Você gosta de batata!");
        }

        //Exercicio: Criem uma versao com while do código acima

        int i = 0;

        while (i < total) {
            System.out.println("Você gosta de batata");
            i++;
        }
    }
}
