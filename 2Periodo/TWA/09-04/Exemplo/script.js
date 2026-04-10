const paragrafos = document.querySelectorAll('p');
console.dir(paragrafos)

const paragrafos2 = document.getElementsByTagName('p');
console.dir(paragrafos2)
const destaques = document.querySelectorAll('.destaque')
console.dir(destaques)

destaques.forEach(destaque => console.log(destaque.innerText));
console.dir(destaques)

const destaqus = document.getElementsByClassName('destaques');
console.dir(destaqus)

// NodeList seleção não é dinamoca
// HTML Collection seleção  é dinamoca


const one = document.getElementById('one');
console.dir(one)

//one.onclick = () =>{
  //  alert("Clicou e o código estava no JS");
//}

one.addEventListener("click", () =>{
    alert("Clicou e o código estava no JS com eventListener");
})


const google = addEventListener( "click", (event) =>{
  event.preventDefault
    alert("indo para o google");
})

