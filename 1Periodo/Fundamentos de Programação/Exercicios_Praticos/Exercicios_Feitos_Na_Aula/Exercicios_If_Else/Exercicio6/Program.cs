//6) Fazer um algoritmo para ler dois números e 
//um dos símbolos das operações: +, -, * e /. 
//Imprimir o resultado da operação efetuada 
//sobre os números lidos.

class Program
{
  static void Main(string[] args)
  {
    int primeiroNumero;
    int segundoNumero;
    char sinalEscolhido;
    int resultado;

    Console.Write("Digite o primeiro número: ");
    primeiroNumero = Convert.ToInt32(Console.ReadLine());
    Console.Write("Digite o sinal da operação(+ - * /): ");
    sinalEscolhido = Convert.ToChar(Console.ReadLine());
    Console.Write("Digite o segundo número: ");
    segundoNumero = Convert.ToInt32(Console.ReadLine());
    if (sinalEscolhido == '+')
    {
      resultado = primeiroNumero + segundoNumero;

      Console.Write("{0} {1} {2} = {3}", primeiroNumero, sinalEscolhido, segundoNumero, resultado);
    }

    else if (sinalEscolhido == '-')
    {
      resultado = primeiroNumero - segundoNumero;

      Console.Write("{0} {1} {2} = {3}", primeiroNumero, sinalEscolhido, segundoNumero, resultado);
    }

    else if (sinalEscolhido == '*')
    {
      resultado = primeiroNumero * segundoNumero;

      Console.Write("{0} {1} {2} = {3}", primeiroNumero, sinalEscolhido, segundoNumero, resultado);
    }
    else if(sinalEscolhido == '/')
    {
      resultado = primeiroNumero / segundoNumero;

    Console.Write("{0} {1} {2} = {3}", primeiroNumero, sinalEscolhido, segundoNumero, resultado);
    }
    else{
      Console.Write("O caracter {0} não é válido para fazer as operações! Por favor, tente novamente!", sinalEscolhido);
    }
  }
}
