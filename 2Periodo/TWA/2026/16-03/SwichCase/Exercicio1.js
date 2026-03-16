const jogo = ["Pedra", "Papel", "Tesoura"];


function gerarNumeroAleatorio(max) {
    numeroAleatorio = Math.floor(Math.random() * max);

    return numeroAleatorio;
}

let numeroComputador = gerarNumeroAleatorio(3);



switch (numeroComputador) {
    case 0:
  console.log("Computador jogou pedra");
        break;

    case 1:
        console.log("Computador jogou papel");
        break;

    case 2:
        console.log("Computador jogou tesoura");
        break;

    default:
        break;
}

//console.log(gerarNumeroAleatorio(1));
