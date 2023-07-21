// O JavaScript é executado linha a linha
// Se ocorrer um erro -> Ele não interpreta as proximas linhas

console.log("1");
console.log("2");
console.log("3");
throw new Error("ERRO PROPOSITAL!");
console.log("4");
console.log("5");
console.log("6");