//2. Faça um programa para ler dois números 
//reais e verificar se ambos são maiores que 
//zero. Caso positivo, informar “Valores são 
//válidos”. Caso contrário, informar “Valores 
//inválidos”.

class Program
{
  static void Main(string[] args){
    double primeiroNumero;
    double segundoNumero;
    Console.Write("Digite o primeiro número: ");
    primeiroNumero = Convert.ToInt32(Console.ReadLine());
    Console.Write("Digite o segundo número: ");
    segundoNumero = Convert.ToInt32(Console.ReadLine());

    if(primeiroNumero < 0 && segundoNumero < 0){
      Console.Write("Valores inválidos");
    }else{
      Console.Write("Valores são válidos");
    }
  }
}