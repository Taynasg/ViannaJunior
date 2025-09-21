//Ler um número inteiro e positivo e verificar se este é ou 
//não um número primo
class Program{
  static void LerNumeroa(int numero)
  {
    
    if (numero % 1 == 0 && numero % numero == 0)
    {
      Console.Write("{0} é primo", numero);
    }
    else
    {
      Console.Write("{0} não é primo", numero);
    }
  }
    static void Main(string[] args)
    {
      int numero;
      Console.Write("Digite um número inteiro: ");
      numero = Convert.ToInt32(Console.ReadLine());
      LerNumeroa(numero);
    }
  }