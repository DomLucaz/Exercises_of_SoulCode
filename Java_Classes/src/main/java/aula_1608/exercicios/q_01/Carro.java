package aula_1608.exercicios.q_01;

import java.time.Year;

public class Carro extends Veiculo {

    private Boolean temArCondincionado;

    private Integer numeroPortas;

    public Carro() {
    }

    public Carro(String marca, String modelo, Year ano, Boolean temArCondincionado, Integer numeroPortas) {
        super(marca, modelo, ano);
        this.temArCondincionado = temArCondincionado;
        this.numeroPortas = numeroPortas;
    }

    public Boolean getTemArCondincionado() {
        return temArCondincionado;
    }

    public void setTemArCondincionado(Boolean temArCondincionado) {
        this.temArCondincionado = temArCondincionado;
    }

    public Integer getNumeroPortas() {
        return numeroPortas;
    }

    public void setNumeroPortas(Integer numeroPortas) {
        this.numeroPortas = numeroPortas;
    }
}