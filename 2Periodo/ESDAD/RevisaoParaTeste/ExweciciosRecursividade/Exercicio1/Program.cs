// 5. Escreva uma função recursiva que receba um número inteiro por
//parâmetro e retorne o fatorial deste número

class Program
{
  public static void Main(string[] args)
  {
    int numero = 5;
    Fatorial(numero);
  }


    public static int Fatorial(int numero)
  {
    if (numero == 0 || numero == 1)
    {
      return 1;
    }

    int fatorial = numero * Fatorial(numero - 1);

    Console.WriteLine($"{numero}! = {fatorial}");


    return fatorial;
  }
}
