// function ModoEscuro() {
//     const corpo = document.querySelector('body');
//     corpo.classList.toggle('dark-mode');
// }

// const titulo1 = document.querySelector('h1');
// titulo1.addEventListener("click", () => {
//     console.log("Clicou!");
// });


// // const titulo2 = document.querySelector('a');
// // titulo2.addEventListener("click", (event)=>{
// //     console.log(event.target);
// // });


// const titulo3 = document.querySelector('a');
// titulo3.addEventListener("click", (event) => {
//     event.preventDefault();
//     console.log(event.target);

// });

// const subtitulo = document.querySelectorAll('h2');
// subtitulo.forEach(subtitulo => {
//     subtitulo.addEventListener("click", (event) => {
//         console.log('Clicou no ', event.target);
//     });

// });



// const subtitulos2 = document.querySelectorAll('h2');
// subtitulos2.forEach(subtitulo2 => {
//     subtitulo2.addEventListener('click', (event) => {
//         event.classList.toggle('text-red');
//     })
// })



function modoEscuro() {
    const corpo = document.querySelector('body');
    corpo.classList.toggle('dark-mode');
}

const btnsModoEscuro = document.querySelectorAll('.modo-escuro');

btnsModoEscuro.forEach((elemento) => {
    elemento.addEventListener('click', (event) => {
        event.preventDefault();
        modoEscuro();
    });
});

