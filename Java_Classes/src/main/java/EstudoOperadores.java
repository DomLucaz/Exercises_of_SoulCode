public class EstudoOperadores {
    public static void main(String[] args) {
        // Operadores matemáticos
        int a = 10;
        int b = 15;
        int soma = a + b;
        int subtracao = a - b;
        int multiplicacao = a * b;
        int divisao = b / a; // divisão entre dois inteiros => inteiro

        System.out.println("Soma: " + soma);
        System.out.println("Subtraçao: "+ subtracao);
        System.out.println("Multiplicacao: " + multiplicacao);
        System.out.println("Divisão: " + divisao);
        // divisão do jeito adequado
        double c = 10.0;
        double d = 15.0;
        double divisao2 = d / c;
        // divisão entre double e int => double
        System.out.println("Divisão entre double: " + divisao2);

        //Math
        double x = Math.pow(2, 3); //potencia 2 elevado a 3 = 8
        double y = Math.sqrt(144); // raiz quadrada de 155 = 12

        System.out.println(Math.PI);

        // Incremento/Decremento
        int valor = 5;
        valor++; // valor = valor + 1
        valor--; // valor = valor - 1
        valor += 10;// valor = valor + 10

        // Operadores relacionais (>, <, >=, <=, ==, !=)
        boolean teste1 = 10 > 5; // true
        boolean teste2 = 5 < 1; // false
        boolean teste3 = 5 == 5; // true
        boolean teste4 = 4 != 5; // true
        boolean teste5 = 5 >= 5; // true
        boolean teste6 = 6 <= 8; // true

        // Operadores lógicos (&&, ||, !)
        boolean teste7 = true && false; // false
        boolean teste8 = true || false; // true
        boolean teste9 = (5 > 10) && (8 > 4); // false
        boolean teste11 = !teste1; // false

        // Exercício I
        // Crie duas variaveis: peso e altura.
        double peso = 72.0;
        double altura = 1.75;
        // Calcule o IMC = peso / (altura * altura)
        double imc = peso / Math.pow(altura, 2);
        // Mostre na tela o IMC
        System.out.println("Seu IMC é: " + imc);
    }
}
