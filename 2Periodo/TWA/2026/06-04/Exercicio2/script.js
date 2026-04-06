/*console.dir(document.body.children.forest.children.tree2.children.shrubbery.children.tresure);
console.log(document.body.children.forest.children.tree2.children.shrubbery.children.tresure);



const tesouro = document.querySelector("#tresure");
tesouro.innerHTML = "<strong> Tesouro </strong>";
console.log(tesouro);
*/


/**
 * Façam um prompt pergunatando quantos elefantes devem aparecer ba nusica 
 * e mostre na pagina a letra da musica
 */

numeroDeElefantes = prompt("Quantos elefantes devem aparecer na música?");

function musica(numeroDeElefantes) {
    let i = 1;

    for (i; i <= 100; i++) {

        if (i === 1 || i % 2 == 1) {
            console.log(i + " elefante incomoda muita gente");
        } else {

            let j = 0;
            let incomodam = "";


            while (j < i) {
                incomodam += "incomodam ";
                j++;
            }

            console.log(i + " elefantes " + incomodam + "muito mais");
        }
    }
}

while(numeroDeElefantes <numeroDeElefantes);


