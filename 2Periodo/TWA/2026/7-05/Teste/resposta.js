/* =================================================================================
TESTE: TECNOLOGIA WEB APLICADA (VALOR 4.0)
---------------------------------------------------------------------------------
ENUNCIADOS:

QUESTÃO 1: 
1. Crie um array com as opções do jogo: 'pedra', 'papel' e 'tesoura'.
1. Selecione todos os elementos de classe 'choice'. Ao clicar em qualquer um deles, a lógica do jogo deve ser disparada.

QUESTÃO 2: Dentro da lógica de processamento:
1. Identifique a escolha do jogador (0:pedra, 1:papel, 2:tesoura) pelas classes do elemento clicado.
2. Defina a escolha da CPU invocando a função 'gerarInteiroRandomico' que foi fornecida.

QUESTÃO 3: Na atualização da interface:
1. Atualize os elementos 'playerImg' (Jogador) e 'cpuImg' (CPU):
   Remova as classes antigas e adicione a nova de acordo com as escolhas.
    Lembre-se do array criado na questão 1 que mapeia os índices às classes corretas.
2. Deixe o container 'resArea' visível alterando o 'display' do style para 'block'.

QUESTÃO 4: Implemente a regra de negócio:
- Empate: Escolhas iguais.
- Vitórias do Jogador: (Pedra vs Tesoura), (Papel vs Pedra), (Tesoura vs Papel).
- Vitória da CPU: Qualquer outro cenário.
Exiba o resultado em texto no elemento 'status'.
=================================================================================
*/


/**
 * FUNÇÃO FORNECIDA: gerarInteiroRandomico(limite)
 * Recebe o valor limite (exclusivo) e retorna um inteiro aleatório entre 0 e limite-1.
 */
function gerarInteiroRandomico(limite) {
  return Math.floor(Math.random() * 3);
}

// Respostas
// 1

const opcoes = ['pedra', 'papel', 'tesoura'];
//                 0        1         2


const opcoesDoJogador = document.querySelectorAll(".choices");
const opcaoPedra = document.querySelector("choice pedra");
const opcaoPapel = document.querySelector("choice papel");
const opcaoTesoura = document.querySelector("choice tesoura");


//2
opcoesDoJogador.forEach(opacao => {
  opacao.addEventListener("click", () => {
    console.log("clicou");

  });
});


const escolhaDaCPU = gerarInteiroRandomico();
console.log(escolhaDaCPU);

if (escolhaDaCPU == 0) {
  console.log("Jogador escolheu 0");
  
}else if(escolhaDaCPU == 1){
 console.log("Jogador escolheu 1");
}else{
   console.log("Jogador escolheu 2");
}


// 3 




// //if(escolhaDaCPU == ){


// }else if(opcoesDoJogador.classList.contains('.choice papel')){


// }else{

//

