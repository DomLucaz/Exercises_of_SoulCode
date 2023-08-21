package aula_1608.interfaces;

public class Cirle implements Forma {

    private double raio;

    public Circulo(double raio) {
        this.raio = raio;
    }

    @Override
    public double calculaArea() {
        return Math.PI * raio * raio;
    }

    @Override
    public double calculaPerm() {
        return 2 * Math.PI * raio;
    }
}