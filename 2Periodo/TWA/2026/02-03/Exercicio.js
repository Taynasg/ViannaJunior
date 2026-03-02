//const ladoA = prompt("Digite o lado A");
//const ladoB = prompt("Digite o lado B");

//const ladoC = Math.sqrt((ladoA**2) + (ladoB**2));

//console.log("A hipotenusa é " + ladoC);


const valorEmMilhas = prompt("Digite um valor em milhas");
const valorEmKm = valorEmMilhas * 1.60934; 
console.log(valorEmMilhas + " equivale a " + valorEmKm + " quilômetros" );


const alturaEmPolegadas = prompt("Digite a altura em polegadas");
const pesoEmLibras = prompt("Digite o peso em libras");

const valorDaAlturaEmCentimetros = alturaEmPolegadas * 2.54;
const valorDoPesoEmQuilos = pesoEmLibras / 2.2046;

console.log("A autura de " + valorDaAlturaEmCentimetros +" centimetros " + " equivale a " + valorEmKm + " quilômetros" );
