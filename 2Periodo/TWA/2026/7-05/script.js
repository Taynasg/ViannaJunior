// Crie um formulário
// Crie um input Text para item
// Crie um submit com valor cadastrar
// Ao clicar em cadastrar no formulario no valor do item deve ser adicionado em um li abaixo do fprm
// Crie um link abaixo com o texto excluir na frente de cada item, ao clicar em excluir o item desaparece da tela

const formCadastro = document.forms[0];
const lista = document.getElementById('lista');


formCadastro.onsubmit = (event) => {
    event.preventDefault()
    const valor = formCadastro('item').value
    if(valor){
        const itemLista = document.createElement("li")
        itemLista.innerText = valor+ " - " 
        lista.appendChild(itemLista)
        const linkExcluir = document.createElement("a")
        linkExcluir.innerText = "Excluir"
        linkExcluir.href = ""
        linkExcluir.onclick = (event) =>{
            event.preventDefault()
            lista.removeChild(itemLista)
        }
    itemLista.appendChild(linkExcluir)
    }

}