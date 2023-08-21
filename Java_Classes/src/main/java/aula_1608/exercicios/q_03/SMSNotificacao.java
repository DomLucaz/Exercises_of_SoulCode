package aula_1608.exercicios.q_03;

public class SMSNotificacao implements Notificavel {

    private String numDest;

    private String numOrig;

    private String mensagem;

    public SMSNotificacao(String numDest, String numOrig, String mensagem) {
        this.numDest = numDest;
        this.numOrig = numOrig;
        this.mensagem = mensagem;
    }

    @Override
    public void notificar() {
        System.out.println("De: " + numOrig + "\nPara: " + numDest + "\n" + mensagem);
    }
}