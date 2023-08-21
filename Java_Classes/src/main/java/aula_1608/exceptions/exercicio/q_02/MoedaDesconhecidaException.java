package aula_1608.exceptions.exercicio.q_02;

public class MoedaDesconhecidaException extends RuntimeException {

    public MoedaDesconhecidaException() {
    }

    public MoedaDesconhecidaException(String message) {
        super(message);
    }
}