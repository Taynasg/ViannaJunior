import { Text } from "react-native"


const MyLabel = (props) => {
    return (
        <Text style={{fontSize: props.tamanho}}> 
            {props.titulo}
            </Text >
    )
}

export default MyLabel