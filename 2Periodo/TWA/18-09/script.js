function modoEscuro() {
    const corpo = document.querySelector('body');
    corpo.classList.toggle('dark-mode');
}

const btnsModoEscuro = document.querySelectorAll('.modo-escuro');

btnsModoEscuro.forEach((elemento) => {
    elemento.addEventListener('click', (event) => {
        console.log(this);

        event.preventDefault();
        modoEscuro();
    });
});

window.addEventListener('keydown', (event) => {
    if((event.key === 'a') || (event.key === 'A')) {
        console.log('Tecla a foi pressionada');
    }
    if((event.key === 'm') || (event.key === 'M')) {
       modoEscuro();
    }
});

const primeiroP = document.querySelector('p');
primeiroP.innerText =   "Primeiro parágrafo <a href='https:\\\\www.google.com'>Google</a>"; 

window.Document.call();