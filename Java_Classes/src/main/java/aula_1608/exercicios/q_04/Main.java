package aula_1608.exercicios.q_04;

public class Main {

    // Crie uma hierarquia de funcionários, onde temos uma classe base
    // Funcionario e subclasses como Gerente, Desenvolvedor e Atendente.

    public static void main(String[] args) {

        Desenvolvedor func1 = new Desenvolvedor("José Almir", "Desenvolvedor", "123");
        Atendente func2 = new Atendente("Gabriel Braga", "Atendente", "4534");
        Gerente func3 = new Gerente("Victor Icoma", "Gerente", "5446");

        System.out.println(func1.getNome());
        System.out.println(func2.getNome());
        System.out.println(func3.getNome());
    }
}