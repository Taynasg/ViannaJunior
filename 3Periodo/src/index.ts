  let num1 = 1;
   let num2: number = 2;
   let num3: number;
   let num4: bigint = BigInt(1000000000000);
   num3 = 3;


const numeros: number[] = [1,2,3,4,5];
const cidades: string[] = ["Juiz de Fora", "São Paulo", "Rio de Janeiro", "Belo Horizonte"];

const valores: Array<number> = [1,2,3,4,5];
const linguagens: Array<string> = ["Typescript", "Go", "Easy"];


let idade1: number;
let idade2: any;
idade1 = 20;      //Sem erros
idade1 = "vinte"; //Erro
idade2 = 20;      //Sem erros
idade2 = "vinte"; //Sem erros



//Declaração          Tipo
let var1;           //  any
let var2 = 10;        //number
let var3 = "Teste";   //string
let var4 = true;      //boolean


let idade: number | string;
idade = 20;      //Permitido
idade = "vinte"; //Permitido
idade = true;    //Erro: idade precisa ser number ou string
console.log('Idade: ' + idade); //Permitido
console.log(idade.toUpperCase()); //Erro: toUpperCase não existe em no tipo (number | string), pois não existe no tipo number


type NumberOrString = number | string;

let idade: NumberOrString;
idade = 20;
console.log(typeof idade); //number
idade = "vinte";
console.log(typeof idade); //string


type MinhaString = string;

let ini: MinhaString = "Type";
let str: string = "script";
let fim: MinhaString;

//A linha abaixo é válida, pois MinhaString é somente um apelido para string e não um novo tipo.
fim = str;

console.log(ini + fim); //Typescript