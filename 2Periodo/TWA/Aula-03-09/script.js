function imprimeMusica(n) {
    var musica = '1 elefante incomoda muita gente.\n';
    for (var i = 2; i <= n; i++) {
        if (i % 2 == 1) {
            musica += `${i} elefantes incomodam muita gente.\n`;
        } else {
            musica += `${i} elefantes `;
            for (var j = 1; j < i; j++) {
                musica += 'incomodam, ';
            }
            musica += 'incomodam muito mais. \n';
        }
    }
     for (var i = n; i >= 1; i--) {
        if (i % 2 == 0) {
            musica += `${i} elefantes incomodam muita gente. \n`;
        } else {
            musica += `${i} elefantes `;
            for (var j = 1; j < i; j++) {
                musica += 'incomodam, ';
            }
            musica += 'incomodam muito mais. \n';
        }
    }

    musica += '1 elefante incomoda muita gente.\n';

    console.log(imprimeMusica(10));
}
