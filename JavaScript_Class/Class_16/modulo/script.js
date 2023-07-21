import { melhoreFilmes, buscarFilme } from "./filmes.js";
import { calculadora } from "./calculadora.js";

function preecherLista(filmes) {
    const lista = document.querySelector("#lista-filmes");
    lista.innerHTML = "";
    filmes.forEach(filme => {
        lista.innerHTML += `<li>${filme.titulo}</li>`;
    });
}
buscarFilme(10);

preecherLista(melhoreFilmes);
console.log(calculadora.soma(3, 7));
console.log(calculadora.menos(3, 7));
console.log(calculadora.vezes(3, 7));
console.log(calculadora.divisao(3, 7));

// modulo -> partição -> divisão
// modular um projeto -> separar em pequenas partes