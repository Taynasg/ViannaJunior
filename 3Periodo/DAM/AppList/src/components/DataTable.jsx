import { Alert, Text, View } from "react-native"



const DataTable = ( p ) =>{

    const lista = p.alunos

    const nomeHandle = (alu)=>{
        new Alert("oi!!!!")
        console.log(alu.nome)
    }

    return (
    <View >
        { (lista != null) &&
            lista.map( a => <Text style={{fontSize: 28 }} 
            onPress={ e => nomeHandle(a)  }>
                {a.nome} - Média {(a.nota1+a.nota2)/2}</Text> 
                )
        }
        { (lista == null) &&
            <Text>Lista Vazia!!!</Text>
        }
    </View>
    )

}

export default DataTable
