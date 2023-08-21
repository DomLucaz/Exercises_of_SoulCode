package aula_1608.exceptions;

public class EstudoThrows {

    // throws -> o tercho de código que chame a função deve obrigatoriamente capturar uma possivel exceção
    public static void validarCPF(String cpf) throws Exception {
        if(cpf.length() != 11) {
            throw new IllegalArgumentException("CPF inválido.");
        }
        System.out.println("CPF válido.");
    }

    public static void main(String[] args) {

        try {
            validarCPF("123456789000");
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}