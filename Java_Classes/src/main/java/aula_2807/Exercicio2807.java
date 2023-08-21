package aula_2807;

import java.util.Scanner;

public class Exercicio2807 {
    public static void main(String[] args) {
//        Crie um programa que recebe um email e uma senha do usuário. Valide se o email é do domínio
//        @soulcode.com e a senha tem comprimento maior que 8. Exiba uma mensagem caso email e senha não
//        sejam válidos.

        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o e-mail:");
        String email = scanner.nextLine();
        System.out.println("Digite a senha:");
        String senha = scanner.nextLine();

        if(email.contains("@soulcode.com")) {
            System.out.println("E-mail válido!");
        }
        else {
            System.out.println("E-mail inválido!");
        }

        if(senha.length() > 8) {
            System.out.println("Senha válido!");
        }
        else {
            System.out.println("Senha inválido!");
        }

//        Crie um programa que define 2 vetores de tamanho igual. Em seguida, crie um terceiro vetor de mesmo
//        tamanho onde o valor em cada posição do terceiro é resultado da soma dos valores nos vetores 1 e 2
//        na mesma posição.

        float[] vetor1 = {1.2F, 3.5F, 7.8F, 9.0F};
        float[] vetor2 = {6.8F, 9.5F, 5.2F, 1.0F};
        float[] vetor3 = new float[4];

        for(int i = 0; i < vetor3.length; i++) {
            vetor3[i] = vetor1[i] + vetor2[i];
            System.out.println(vetor3[i]);
        }
    }
}