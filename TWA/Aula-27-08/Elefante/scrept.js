var fraseNoSingular = "elefante incomoda muita gente";
var fraseNoPlural = "elefantes incomodam muita gente";

function imprimeMusica() {

    for ( i = 1; i < 10; i++) {
        if (i = 1) {
            console.log(i + fraseNoSingular);
        } else {
              console.log(i + fraseNoPlural);
        }
    }
}

imprimeMusica();


