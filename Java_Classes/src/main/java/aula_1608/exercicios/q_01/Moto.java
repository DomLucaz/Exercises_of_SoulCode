package aula_1608.exercicios.q_01;

import java.time.Year;

public class Moto extends Veiculo {

    private Float volumeBagageiro;

    public Moto() {
    }

    public Moto(String marca, String modelo, Year ano, Float volumeBagageiro) {
        super(marca, modelo, ano);
        this.volumeBagageiro = volumeBagageiro;
    }

    public Float getVolumeBagageiro() {
        return volumeBagageiro;
    }

    public void setVolumeBagageiro(Float volumeBagageiro) {
        this.volumeBagageiro = volumeBagageiro;
    }
}