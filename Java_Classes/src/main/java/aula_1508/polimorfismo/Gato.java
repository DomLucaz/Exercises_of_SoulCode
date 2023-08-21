package aula_1508.polimorfismo;

public class Gato extends Animal {

    private String corPelo;

    public String getCorPelo() {
        return corPelo;
    }

    public void setCorPelo(String corPelo) {
        this.corPelo = corPelo;
    }

    // sobreposição de método -> reescrever um método
    @Override // -> Anotação
    public void emitirSom() {
        System.out.println("Miau, Miau!");
    }
}