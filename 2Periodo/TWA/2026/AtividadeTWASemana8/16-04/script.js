const btnDesaparecer = document.getElementById("btnDesaparecer");
const divShape = document.getElementById("shape");
const link = document.getElementById("link");

const imgPkm = document.getElementById("imgPkm");
const btnEvoluir = document.getElementById("evoluir");



btnEvoluir.onClick =() =>{
    imgPkm.setAttribute("src", "./02.png");
    imgPkm.setAttribute("alt", "Raichu");
    imgPkm.parentElement.innerHTML = "<h1>Raichu </h1>"
    imgPkm.parentElement.innerHTML;

} 

/*
btnDesaparecer.onClick = ()=>{
    if (divShape.classList.contains("hide")) {
        divShape.classList.remove("hide")
    } else {
        divShape.classList.add("hide");
    }
}
*/

/*
btnDesaparecer.onClick = ()=>{
divShape.classList.toggle("hide");
}
*/

/*
btnDesaparecer.onClick = ()=>{
divShape.classList.toggle("hide");
    if (btnDesaparecer.innerText== "Desaparecer!") {
        btnDesaparecer.innerText== "Reaparecer!"
    } else {
        tnDesaparecer.innerText== "Desaparecer!"
    }


    }
    */

    /*
btnDesaparecer.onClick = () => {
    divShape.classList.toggle("hide");
    if (btnDesaparecer.innerText == "Desaparecer!") {
        btnDesaparecer.innerText == "Reaparecer!"
    } else {
        btnDesaparecer.innerText == "Desaparecer!"
        if(divShape.contains("blue")){
        divShape.classList.replace("blue", 'green');
        }else{
            divShape.classList.replace("green", 'blue');
        }
    }
}

*/

link.onClick= (event) => { 
    event.peivateDefault();
    const caminho = link.getAttribute("href")
    console.log('Estou tentando ir para" + ${caminho}');
};