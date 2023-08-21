package aula_1608.exercicios.q_01;

import java.time.Year;

public class Main {

    // Crie uma classe Veiculo com propriedades como marca, modelo e ano.
    // Em seguida, crie subclasses como Carro e Moto que herdam de Veiculo.

    public static void main(String[] args) {

        Carro carro = new Carro("Toyota", "Hilux", Year.of(2023), true, 4);
        Moto moto = new Moto("Honda", "Titan", Year.of(2021), 0.0F);

        System.out.println(carro.getMarca());
        System.out.println(moto.getMarca());
        System.out.println(carro.getTemArCondincionado());
        System.out.println(moto.getVolumeBagageiro());
    }
}