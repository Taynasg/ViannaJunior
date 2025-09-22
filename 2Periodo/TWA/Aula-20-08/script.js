var nome = "Tayná";
var sobrenome = 'Guimaraes';
var nomeCompleto = nome + ' ' + sobrenome;
var idade = 10;
var comida = "Frango";

var vazioUm;
var vazioDois;
var vazioTres;

console.log(typeof idade) /*Vai indicar o tipo inteiro */;
idade = "Trinta e Nove";
console.log(typeof idade) /*Vai indicar o tipo String */;

var pontos = 10;
var texto = ' O aluno fez ' + pontos + ' pontos';
console.log(texto);
texto = nomeCompleto + ' fez ' + pontos + ' pontos';
console.log(texto);
var texto2 = "JavaScript é fácil";
/*
Padrão
Textos curtos ''
Textos longos "" 
*/

/*
Diferenças templete Strings(``)
-Preserva as quebreas de linhas
- Pode fazer interpolação 
*/
var texto3 = "Nome: Huguinho \n Pontos: 8";

var textoComTemplete = `Parece uma 
string normal`;
console.log(textoComTemplete);

texto = `Nome completo ${nome} ${sobrenome}`;

var numero1 = 16;
var numero2 = 36.9;
//var numero3 = 2e;

/*
Exercícios
*/

meuNome = 'Tayná'
minhaIdade = '22'
var frase = `Meu nome é ${meuNome} e minha idade é ${minhaIdade}`

var numero1 = 16;
var texto = 'vinte';
var resultado = numero1 + texto;

var i = 1;
var z = i++;
/*
var z = i
i = i+2
*/

/*
i = i+2
var z = i
*/

console.log('i:', i);
console.log("z:", i);

/*
var z = i;
i = i-1
*/


console.log('i:', i);
console.log("z:", i);

var numero = 16;
var texto = '20';
var resultado = +texto + numero;
console.log(resultado);

var numero = 16;
var texto = '20';
var resultado = +texto + numero;
console.log(resultado);


var corFavorita = 'Azul';

switch (corFavorita) {
    case 'Azul':
        console.log("OLhe para o céu");
        break;
    case 'Vermelhgo':
        console.log("OLhe para rosas");
        break;
    case 'Amarelo':
        console.log("OLhe para o sol");
        break;
    default:
        console.log("Feche os olhos")
        break;
}

var condicao = false;
if (condicao) {
    console.log("Verdadeiro")
} else {
    console.log("Falso")
}

// o && sempre retorna o último valor
var condicao = 'Cao' && 'Gato'
console.log(condicao);

var variavel;
variavel && variavel+1;
console.log(variavel);

var variavel;
if(variavel){
    variavel++
}

variavel: var
console.log(variavel)