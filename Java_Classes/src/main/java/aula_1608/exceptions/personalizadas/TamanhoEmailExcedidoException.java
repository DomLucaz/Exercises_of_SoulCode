package aula_1608.exceptions.personalizadas;

public class TamanhoEmailExcedidoException extends RuntimeException {

    public TamanhoEmailExcedidoException() {
    }

    public TamanhoEmailExcedidoException(String message) {
        super(message);
    }
}