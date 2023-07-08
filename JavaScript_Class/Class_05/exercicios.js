// Escreva um programa que imprima os números de 1 a 20 usando um loop for.

for (let passo = 1; passo <= 20; passo++) console.log(passo)

/* Crie um programa que receba um número e calcule a soma de todos os números ímpares até esse número. 
Use um loop for e uma estrutura condicional if para verificar se cada número é ímpar.*/

//Para saber se o numero é impar ele precisa apresentar resto na divisão por 2

let somarTodos = 20
let somar = 0

for(let i = 0; i <= somarTodos; i++){
    if(!(i % 2 == 0)) somar += i //então somar os valores impares até esse numér (100)
}
console.log(somar)

//Faça um programa que receba um número e exiba a tabuada da soma desse número usando um loop for.



//Crie um programa que exiba todos os números múltiplos de 7 de 1 a 100 usando um loop for e uma estrutura condicional if para verificar se cada número é múltiplo de 7.

//Escreva um programa que receba um número e desenhe na tela um triângulo formado por "*".