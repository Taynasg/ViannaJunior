var aluno = {
    nome: "Huguinho",
    matricula: 12345,
    frequente: true,
    nota: 8.3,
    verificaAprovacao: function () {
        return ((this.nota > 7) && this.frequente);
        //Retorna o proprio atributo   
        console.log(this);

    },

    //Arrow Function
    verificaAprovacao:  () => {
        return ((this.nota > 7) && this.frequente);
    },

}
console.log(aluno.verificaAprovacao());

//Retorno Arrow Function
console.log(this);

var consoles = ["Switch","Switch2","PS5","Xbox"]
for (var i = 0; i < consoles.length; i++) {
    console.log(console[i]);
}

consoles.forEach(function imprimeConsole(videogame){
console.log(videogame);
});

consoles.forEach((videogame) => {
console.log(videogame);

});

consoles.forEach((videogame) => {
console.log(videogame);

});
