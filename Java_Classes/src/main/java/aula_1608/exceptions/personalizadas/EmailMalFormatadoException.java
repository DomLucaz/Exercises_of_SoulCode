package aula_1608.exceptions.personalizadas;

public class EmailMalFormatadoException extends RuntimeException {

    public EmailMalFormatadoException() {
    }

    public EmailMalFormatadoException(String message) {
        super(message);
    }
}