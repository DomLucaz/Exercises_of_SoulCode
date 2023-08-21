package aula_1608.exercicios.q_02;

import java.time.LocalDate;

public class CartaoCredito extends Pagamento {

    private Double numero;

    private Double limite;

    private String bandeira;

    public CartaoCredito() {
    }

    public CartaoCredito(Double valor, LocalDate data, Double numero, Double limite, String bandeira) {
        super(valor, data);
        this.numero = numero;
        this.limite = limite;
        this.bandeira = bandeira;
    }

    public Double getNumero() {
        return numero;
    }

    public void setNumero(Double numero) {
        this.numero = numero;
    }

    public Double getLimite() {
        return limite;
    }

    public void setLimite(Double limite) {
        this.limite = limite;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }
}