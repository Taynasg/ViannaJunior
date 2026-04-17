/*
Exercício
Crie um arquivo chamado index.html com os seguintes elementos:

Um título: "Monitor de Hábitos".

Uma frase que diga: "Humor atual: [Aguardando]" (Dica: use um <span> com ID para o texto variável).

Três botões de humor: 😊 Feliz, 😐 Neutro, 😴 Cansado.

Um contador de água: "Copos de água: 0".

Um contador de exercícios: "Minutos de exercício: 0".

Botões para "+1 Copo de Água" e "+15 min de Exercício".

No seu arquivo script.js, você deve:
Criar Variáveis Globais:

Uma variável para a quantidade de água (começando em 0).

Uma variável para o tempo de exercício (começando em 0).

Função de Humor:

Crie uma função chamada mudarHumor(estado).

Ao clicar nos botões de emoji, essa função deve ser chamada passando o texto do humor como parâmetro.

A função deve selecionar o elemento de texto do humor e alterar seu conteúdo.

Funções de Contadores:

Crie uma função para adicionar água. Ela deve somar 1 à variável e atualizar o texto na tela.

Crie uma função para adicionar exercício. Ela deve somar 15 à variável e atualizar o texto na tela.

Botão de Reset:

Crie um botão "Reiniciar Dia" que volta todas as variáveis para 0 (ou vazio) e limpa os textos da tela.
*/

let tempoDeExercicio = 0;
let quantidadeDeCopos = 0;

const botaoHumor = document.querySelectorAll(".btnHumor");
const textoHumor = document.getElementById("humor")

botaoHumor.forEach(botao =>{
    botao.addEventListener("click", mudarHumor)
})



function mudarHumor(e) {
    
    textoHumor.innerText = e.target.innerText;
}




const quantidadeDeAgua = document.getElementById("coposDeAgua");

function adicionarAgua() {
    quantidadeDeCopos++;
    quantidadeDeAgua.innerText = quantidadeDeCopos;
}


const quantidadeDeMinutos = document.getElementById("minutosDeExercicio");

function adicionarMinutos(){
        tempoDeExercicio+=15;
        quantidadeDeMinutos.innerText = tempoDeExercicio;
}



