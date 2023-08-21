package aula_1608.exceptions.exercicio.q_02;

public class ConversorMoedas {

    private Double converterRealParaDolar(Double real) {
        return real / 4.99;
    }

    private Double converterDolarParaReal(Double dolar) {
        return dolar * 4.99;
    }

    public void converter(String moedaOrig, String moedaDest, Double valor) {
        if(moedaDest == "real" && moedaOrig == "dolar") {
            System.out.println(converterDolarParaReal(valor));
        }
        else if(moedaDest == "dolar" && moedaOrig == "real") {
            System.out.println(converterRealParaDolar(valor));
        }
        else {
            throw new MoedaDesconhecidaException();
        }
    }
}