package aula_1608.exercicios.q_02;

import java.time.LocalDate;

public class BoletoBancario extends Pagamento {

    private String codigo;

    public BoletoBancario() {
    }

    public BoletoBancario(Double valor, LocalDate data, String codigo) {
        super(valor, data);
        this.codigo = codigo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
}