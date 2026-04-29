/*
Exercícios propostos (em script.js):
1. Seleção de Elementos:
a) Selecione o elemento com o ID tituloPrincipal e 
altere seu texto para "Revisão de DOM para a Prova".
*/
const titulo = document.getElementById('tituloPrincipal');

/*
b) Selecione todos os elementos com a classe paragrafo 
e altere a cor do texto deles para azul (#0000FF).
*/
const paragrafos = document.getElementsByClassName('paragrafo');
paragrafos.forEach(paragrafo =>(event){
event.t
})

/*
c) Usando um seletor mais específico, selecione o 
elemento <strong> que está dentro do segundo parágrafo
e altere seu texto para "conceito chave".
*/
/*
2. Criação e Inserção de Elementos:
a) Crie um novo elemento <p> com o texto "Este é um 
parágrafo adicionado via JavaScript!".
b) Insira este novo parágrafo ao final da div com ID 
container-principal.
*/
/*
3. Modificação de Atributos e Classes:
a) Selecione o <h1> e adicione a ele a classe destaque.
b) Selecione o campo de input com ID campo-texto e
 altere seu atributo placeholder para "Digite aqui...".
*/
/*
4. Manipulação de Listas e eventos:
a) Adicione um "event listener" ao botão com ID 
botao-adicionar. Ao ser clicado, ele deve  adicionar 
um novo item (<li>) à lista minha-lista com com o texto 
"Novo Item" e adicione-o ao final da lista.
*/
/*
b) Adicione um "event listener" a cada um dos itens 
da lista 
(<li class="item-lista">). Quando um item da lista
 for clicado, 
seu texto deve ser exibido em um alert. 
(Dica: Use um laço de repetição).
*/