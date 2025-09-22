nota = 1;
nota2 = 7;

if ( nota>= 7){
    var Resultado = 'Aprovado';
}
else{
    var Resultado = 'Reprovado';
}

var Resultado = (nota2 >= 7 )? Resultado = 'Aprovado' : Resultado = 'Reprovado';

// variavel = (condicao) ? primeira_condicao : segunda_condicao;



var nota = 8;
var resultado;

if ( resultado){
    var Resultado = 'Aprovado';
}
else{
    var Resultado = 'Reprovado';
}
var Resultado = (nota >= 7 )? Resultado = 'Aprovado' : Resultado = 'Recuperação';


if ( resultado){
    var Resultado = 'inicializada';
}
else{
    var Resultado = 'Em validação';
}
resultado = resultado ? 'Em validação' : 'inicializada'; 


if ( nota){
    nota = nota;
}
else{
    nota = 0;
}

nota = (nota) ? nota : 0;
// Operador nullysh
nota = nota ?? 0;

imprimirSoma(1,2,3);


function somar3Numeros(a, b, c){
    var resultado = a +b + c;
    return resultado;
} 

function somar2Numeros(a,b){
    return a +b;
}
var somarNumeros = somar3Numeros;

function imprimirSoma(n1,n2,n3){
var soma = somarNumeros(n1,n2,n3)
console.log(soma)
}
imprimirSoma(1,2,3);

/*Função de callback*/
function imprimirSoma(n1,n2,n3, funcao){
var soma = funcao(n1,n2,n3)
console.log(soma)
}
imprimirSoma(1,2,3,somar3Numeros);

console.log(somar2Numeros);

var somar3Numeros = (a,b,c)=>{
    var resultado = a + b + c;
    return resultado;
}


function somar(a, b) {
    return a + b
}
somar(1, 2);
console.log(a);
