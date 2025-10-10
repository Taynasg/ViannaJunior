01: Primeiro, selecione todos os elementos do formulário (inputs, selects) e os elementos do cartão de preview (div do cartão, h3 do nome, p da bio, div do avatar).

02: Atualização em Tempo Real (Texto):

Adicione um event listener ao campo de nome e à bio para o evento input. Este evento dispara a cada tecla pressionada.

Na função do evento, atualize o textContent do <h3> e do <p> no cartão com o valor (.value) do campo correspondente.

03: Atualização por Seleção (Estilos e Avatar):

Adicione um event listener aos três <select> (cor, borda e avatar) para o evento change.

Cor de Fundo: Na função do evento, altere a propriedade style.backgroundColor do cartão principal.

04: Estilo da Borda: Remova as classes de borda existentes e adicione a nova classe correspondente ao value selecionado (ex: borda-solida).

05: Avatar: Atualize o textContent do div do avatar com o emoji selecionado.
