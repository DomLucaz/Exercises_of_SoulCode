package aula_2807;

import java.util.Scanner;

public class EstudoVetores {

    public static void main(String[] args) {
//        int[] nums = {1, 2, 3, 4, 5}; // vetor de numeros inteiros
//        double[] notas = new double[60]; // declara um vetor double vazio com 60 posições
//
//        notas[59] = 5.6;
//        System.out.println(notas[59]);
//
//        System.out.println(nums[4]);
//        nums[4] = 8;
//        System.out.println(nums[4]);
//
//        String[] nomes = {"Fernando", "Felipe"}; // válido
//        String nomes2[] = {"João", "Maria"}; // válido
//
//        // iterar sob os vetores
//        for(int i = 0; i < nums.length; i++) { // interar sobre o vetor
//            System.out.print(nums[i]);
//        }
//        System.out.println(); // quebra de linha
//
//        for(int num : nums) { // for each do java
//            System.out.print(num);
//        }
//        System.out.println(); // quebra de linha

        Scanner scanner = new Scanner(System.in);
        System.out.println("Digite o números de notas");
        int nNotas = scanner.nextInt();
        double[] notas = new double[nNotas];
        for (int i = 0; i < nNotas; i++) {
            System.out.println("Digite a nota: ");
            notas[i] = scanner.nextDouble(); // guardar as notas no vetor
        }
        double media = 0.0;
        for(double nota : notas) media += nota; // somar todos os valores
        media /= nNotas; // calculo da media com base no numeros de notas
        System.out.printf("A média é igual a %.2f", media);
    }
}