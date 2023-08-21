package aula_1608.exercicios.q_03;

public class Main {

    // Desenvolva um sistema de notificações que use abstração como Notificavel
    // e tenha classes concretas como EmailNotificacao e SMSNotificacao.

    public static void main(String[] args) {

        Notificavel email = new EmailNotificacao("x@mail.com", "y@mail.com", "Fala, brow!");
        Notificavel sms = new SMSNotificacao("123", "234", "Fala, mano!");
        email.notificar();
        sms.notificar();
    }
}