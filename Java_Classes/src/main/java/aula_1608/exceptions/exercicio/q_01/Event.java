package aula_1608.exceptions.exercicio.q_01;

import java.util.ArrayList;
import java.util.List;

public class Event {

    List<String> reservas = new ArrayList<>();

    public void adicionarReserva(String nome) {
        if(reservas.size()+1 > 5) {
            throw new NoMoreSeatsException();
        }
        reservas.add(nome);
        System.out.println("Reserva efetuada.");
    }
}