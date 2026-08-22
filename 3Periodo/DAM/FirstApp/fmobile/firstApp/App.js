import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import MyLabel from './src/components/MyLabel';


export default function App() {
  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app!</Text>
      {/* <Button styles={styles.btn} onPress={int}>Click</Button> */}
      <Text>Aula Mobile</Text>
      <MyLabel titulo="2026/2" />
      <MyLabel titulo="Daves Martins" tamanho={32}/>
      <StatusBar style="auto" />

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
