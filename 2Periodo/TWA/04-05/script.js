//const formulario = document.querySelector('form');
//console.dir(formulario);
const formulario1 = document.forms("nomeForms");
console.dir(formulario1);
const inputNome = formulario1["nome"];
console.dir(inputNome);

//Forma de pegar um formulario(Retprna um HTML Collection)
//document.forms[indice]

formulario1.onsubmit = (event) => {
event.preventDefault()
const nome = inputNome.value
if(!nome){
/*Crie um elemento com a tag small depois do input e mostre o erro */ 
const erro = document.createElement('small');
erro.innerText ="O nome deve ser preenchido";
formulario1.insert    
alert(`Olá ${nome}!`)
}else{

}

}





//Formas diferentes de escrever a mesma coisa

/* 
formulario1.onsubmit = (event) => {
    console.log(numero1.value);
}

formulario1.addEventListener("submit", (event)=>{
    console.log(numero1.value);
    
});
*/