let subtitle = document.getElementById('subtitle');
console.log(subtitle);
subtitle.innerText="Subtitulo modificado!";

let paragrafos = document.getElementsByTagName('p');
paragrafos[0].innerText="Parágrafo modificado!";

let textoVermelho = document.getElementsByTagName('p');
textoVermelho[0].innerText="Texto Vermelho modificado!";

for (let i = 0; i < paragrafos.length; i++) {
    console.log(paragrafos[i]);
    
}

// Não funciona
// paragrafos.array.forEach(paragrafo => {
//     console.log(paragrafo);
    
// });

let subtitle = document.getElementById('subtitle');
subtitle.innerText="Subtitulo modificado!";

let primeiroElemento = document.querySelector('section p');
console.log(primeiroElemento);

let todosElemento = document.querySelectorAll(' p');
console.log(todosElemento);

primeiroElemento.classList.add('bg-black');
primeiroElemento.classList.replace('text-red', 'text-blue' );

/*
Crie a funçãoa trocaClasse que verifica se existe a classe texr-red, se existir 
ele remove ela se não existir ele adiciona ela
*/ 

let 
function trocaClasse(){

}

/*
Crie a funçãoa modoEscuro que adiciona a classe dark-mode ao body
se não existir,se existirremove ela
*/ 

function modoEScuro(params) {
    if () {
      let primeiroElemento = document.querySelector('body');  
    }
}