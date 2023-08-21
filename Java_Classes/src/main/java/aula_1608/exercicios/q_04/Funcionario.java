package aula_1608.exercicios.q_04;

public abstract class Funcionario {

    private String nome;

    private String cargo;

    private String cpf;

    public Funcionario(String nome, String cargo, String cpf) {
        this.nome = nome;
        this.cargo = cargo;
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}