/* Atividade 1 
Escreva um programa que verifique se um número é positivo, negativo ou zero e exiba uma mensagem correspondente?*/

let numero = -5; 

// ⬆️ Altere os valores acima para testar com diferentes números

if (numero > 0) {
console.log("Positivo.");
} else if (numero < 0) {
console.log("Negativo.");
} else {
console.log("Zero.");
}


/* Atividade 2 
Crie um programa que receba a idade de uma pessoa e verifique se ela é maior de idade (18 anos ou mais) ou menor de idade.*/

let idade = 16;

if (idade < 0 || idade > 150)  {
    console.log("Valor idade invalido")
} else if (idade => 18){
    console.log("Menor de idade")
}
else {
    console.log("Você é menor de idade")
}


/* Atividade 3
Escreva um programa que receba três números e determine qual deles é o maior.*/

let num1 = 10; 
let num2 = 20;
let num3 = 30;

// ⬆️ Altere os valores acima para testar com diferentes números

let maiorNumero;

if (num1 > num2 && num1 > num3) {
    maiorNumero = num1
} else if (num2 > num1 && num2> num3) {
    maiorNumero = num2;
} else {
    maiorNumero = num3;  
}

console.log("O maior número é: " + maiorNumero)


// Crie um programa que receba dois números e verifique se seu produto é par ou ímpar.

let numero1 = 10; 
let numero2 = 20;

// ⬆️ Altere os valores acima para testar com diferentes números

let produto = numero1 * numero2;

if (produto % 2 === 0) {
console.log("O produto é par.");
} else {
console.log("O produto é ímpar.");
}

// Escreva um programa que receba o nome de um dia da semana e exiba se é um dia útil ou um fim de semana.

// Faça um programa que receba um número de 1 a 7 e exiba o dia da semana correspondente (1 - domingo, 2 - segunda-feira, etc.).