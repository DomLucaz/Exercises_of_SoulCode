package aula_0208;

public class Fruit {

    String nome;

    String cor;

    float acidez;

    boolean suculencia = false;

    boolean maduro = false;

    String[] vitaminas;

    void amadurecer(int dias) {
        maduro = true;
    }
}