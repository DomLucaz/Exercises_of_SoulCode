package aula_1608.exceptions.exercicio.q_01;

public class NoMoreSeatsException extends RuntimeException {

    public NoMoreSeatsException() {
    }

    public NoMoreSeatsException(String message) {
        super(message);
    }
}