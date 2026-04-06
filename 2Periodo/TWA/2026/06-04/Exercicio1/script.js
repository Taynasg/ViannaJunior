document.querySelector(".main  > p"); /**Pega o primeiro que correspondem ao elemento */
document.querySelectorAll(".main  > p");/**Pega todos os que correspondem ao elemento */








console.log(document.querySelector(".main > a"));

const paragrafos = document.querySelectorAll("p");
paragrafos.forEach(paragrafo => {
    console.log(paragrafo);
    
});

console.log("===========================");

for (const paragrafo of paragrafos) {
    console.log(paragrafo);
    
}

console.log("===========================");

for (const paragrafo in paragrafos) {

        console.log(paragrafo);

    
}






















