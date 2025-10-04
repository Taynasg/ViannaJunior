// 6. Escreva uma função recursiva que receba um inteiro n por parâmetro e a
//soma dos n primeiros números naturais.


class Program
{
  public static void Main(string[] args)
  {
    int numero = 5;
    Console.WriteLine($"= { SomaDosNumerosNaturais(numero)} ");
    ;
  }
  static int SomaDosNumerosNaturais(int numero)
  {
    int soma = 0;
    if (numero >= 1)
    {
      soma = numero + SomaDosNumerosNaturais(numero - 1);
        Console.Write($"{numero } + ");


    }
   
   
    return soma;
    }

}
