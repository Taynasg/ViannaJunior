/*
TESTE - Faculdades Integradas Vianna Júnior

Realize as questões a seguir, utilizando o código já fornecido como base. Não altereo html, ao final do teste, você deve enviar somente o arquivo resposta.js.

Questão 1 (0.3pts). Inicialização do jogo: 

Posicione 5 navios no tabuleiro (armazenando as posições em um array ).
Posicione 3 bombas no tabuleiro (armazenando as posições em outro array ).
Crie uma variável para armazenar o número de bombas restantes.
Adicione eventos de clique para as células do tabuleiro.

*/

const tabuleiro = [
    0, 1, 0, 0, 0,
    0, 0, 1, 0, 2,
    0, 0, 0, 0, 1,
    0, 1, 0, 2, 0,
    0, 0, 0, 1, 2];

let qntBombas = 3;
let qntNavios = 5;

const celulas = document.querySelectorAll(".cell");
const playerBombs = document.getElementById("player-bombs");
const message = document.getElementById("message");
const btnRestart = document.getElementById("restart-button");

celulas.forEach(celula => {
    celula.onclick = (event) => {
        const celulaClicada = event.target;

        if (celulaClicada.classList.contains("hit") ||
            celulaClicada.classList.contains("bomb") ||
            celulaClicada.classList.contains("miss")) {
            alert("Você já clicou nesta célula!");
        } else {
            const posicao = celulaClicada.getAttribute("posicao");
            if (tabuleiro[posicao] == 1) {
                celulaClicada.classList.add("hit");
                qntNavios--;
            } else if (tabuleiro[posicao] == 2) {
                celulaClicada.classList.add("bomb");
                qntBombas--;
                playerBombs.innerText = qntBombas;
            } else {
                celulaClicada.classList.add("miss");
            };

            checkVictory();
        }
    };
});

function checkVictory() {
    if (qntBombas == 0){
        message.innerHTML= "<strong>Você perdeu! </strong>"       
    }else if(qntNavios == 0){
        message.innerHTML= "<strong>Você ganhou! </strong>"       
    }
}

function checkEndGame() {
    if (qntBombas == 0 || ntNavios == 0 ){
       
    }
}




btnRestart.onclick = ()=>{
    qntBombas = 3;
    qntNavios = 5;
    celulas.forEach(celula => {
        celula.classList.remove("hit","bomb","miss");
    });
    message.innerText="";
    playerBombs.innerText = qntBombas;
};

/*
Questão 2 (1.0pts). Ao clicar em uma célula do tabuleiro: 

Verifique se a célula clicada contém um navio ou uma bomba.
    - Se for um navio, adicione a classe hit à célula.
    - Se for uma bomba, adicione a classe bomb à célula e atualize a mensagem de bombas restantes em player-bombs.
    - Se a célula não contiver navio ou bomba, adicione a classe miss à célula.

Se a célula já tiver sido clicada, exiba uma mensagem de aviso. Utilize o método alert() para exibir a mensagem. Por exemplo: alert("Você já clicou nesta célula!")

*/


/*
Questão 3 (0.7pts). Condição de vitoria: 

Crie uma função chamda checkVictory() e nela:
    Verifique se todos os navios foram atingidos. Se sim, exiba uma mensagem de vitória na div message.
    Caso as 3 bombas sejam atingidas, exiba uma mensagem de derrota na div message .

Esta função deve ser chamada após cada clique em uma célula do tabuleiro.

Ao clicar no botão reiniciar: limpe o tabuleiro, atualize as mensagens e reinice as variáveis necessárias para o início de um novo jogo.

*/


/*

Questão Extra (0.5pts). Personalização do jogo: 

Ao exibir as mensagens do jogo, pegue o nome do jogador digitado no input e exiba o nome dele junto com a mensagem. Por exemplo: "Parabéns, Maria! Você venceu!" ou "Que pena, João! Você perdeu!".

*/
