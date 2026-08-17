"use strict";
let num1 = 1;
let num2 = 2;
let num3;
let num4 = BigInt(1000000000000);
num3 = 3;
const numeros = [1, 2, 3, 4, 5];
const cidades = ["Juiz de Fora", "São Paulo", "Rio de Janeiro", "Belo Horizonte"];
const valores = [1, 2, 3, 4, 5];
const linguagens = ["Typescript", "Go", "Easy"];
let idade1;
let idade2;
idade1 = 20; //Sem erros
idade1 = "vinte"; //Erro
idade2 = 20; //Sem erros
idade2 = "vinte"; //Sem erros
//Declaração          Tipo
let var1; //  any
let var2 = 10; //number
let var3 = "Teste"; //string
let var4 = true; //boolean
let idade;
idade = 20; //Permitido
idade = "vinte"; //Permitido
idade = true; //Erro: idade precisa ser number ou string
console.log('Idade: ' + idade); //Permitido
console.log(idade.toUpperCase()); //Erro: toUpperCase não existe em no tipo (number | string), pois não existe no tipo number
let idade;
idade = 20;
console.log(typeof idade); //number
idade = "vinte";
console.log(typeof idade); //string
let ini = "Type";
let str = "script";
let fim;
//A linha abaixo é válida, pois MinhaString é somente um apelido para string e não um novo tipo.
fim = str;
console.log(ini + fim); //Typescript
