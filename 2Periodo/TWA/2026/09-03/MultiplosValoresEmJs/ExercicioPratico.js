// Exercício prático 3.4

// 1. Crie um novo objeto myCar para um carro. Adicione algumas propriedades,
// incluindo, mas não se limitando a, make e model, e valores para um carro
// típico ou seu próprio carro. Sinta-se à vontade para usar booleanos,
// strings ou números.

// 2. Crie uma variável que possa conter o valor da string color.
// Esta variável contendo um valor de string color agora pode ser usada
// para referenciar o nome da propriedade dentro de myCar.
// Em seguida, use a variável dentro da notação de colchetes para atribuir
// um novo valor à propriedade color em myCar.

// 3. Use essa mesma variável e atribua um novo valor de string de propriedade
// a ela, como forSale. Use a notação de colchetes mais uma vez para atribuir
// um novo valor à propriedade forSale para indicar se o carro está
// disponível para compra.

// 4. Envie make e model para o console.

// 5. Envie o valor de forSale para o console.


myCar = {
    make: "Fiat",
    model: "Polo",
    valor: "10000",
    color: "black",
    forSale: false
};

let prop = "color";
myCar[color] = "red";
prop = "forSale";
myCar[color] = true;

console.log(myCar.make, myCar.model);
console.log(myCar["forSale"]);

myCar.doors =2;
myCar.["doors"] =2;
console.log(myCar);


