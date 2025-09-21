//5. Faça um programa para ler um caractere e 
//imprimir as seguintes mensagens, segundo o 
//caso:
//• “Sinal de menor”
//• “Sinal de maior”
//• “Sinal de igual”
//• “Outro caractere”

class Program
{
  static void Main(string[] args)
  {
    char caracter;

    Console.Write("Digite um caracter: ");
    caracter = Convert.ToChar((Console.ReadLine()));

    switch (caracter)
    {
      case '<':
        Console.Write("Sinal de menor");
        break;

      case '>':
        Console.Write("Sinal de maior");
        break;

      case '=':
        Console.Write("Sinal de igual");
        break;
      default:
        Console.WriteLine("Outro caractere");
        break;
    }

  }
}