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

const botaoHumor = document.getElementsByClassName("botaoDeHumor")
let quantidadeDeAgua = 0;
let tempoDeExercício = 0;

function mudarHumor(){
    addEventListener("click", function(){
        console.log("Botao clicado");
        
    })

}