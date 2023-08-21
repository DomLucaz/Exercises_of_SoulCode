package aula_1608.exercicios.q_02;

import java.time.LocalDate;

public class Main {

    //Implemente um sistema de pagamento com diferentes métodos (CartaoCredito,
    // PayPal, BoletoBancario) que possam ser usados de forma polimórfica.

    public static void main(String[] args) {

        LocalDate data1 = LocalDate.of(2023, 8, 10);
        LocalDate data2 = LocalDate.of(2023, 8, 7);
        LocalDate data3 = LocalDate.of(2023, 8, 5);

        Pagamento pagamento1 = new BoletoBancario(10.0, data1, "958738947535394857893");
        Pagamento pagamento2 = new PayPal(4000.0, data2, "gabriel.braga@soulcode.com", 2.0F);
        Pagamento pagamento3 = new CartaoCredito(200.0, data3, 12909.0, 3000.0, "Master Card");

        System.out.println(pagamento1.getValor());
        System.out.println(pagamento1.getData());

        System.out.println(pagamento2.getValor());
        System.out.println(pagamento2.getData());

        System.out.println(pagamento3.getValor());
        System.out.println(pagamento3.getData());
    }
}