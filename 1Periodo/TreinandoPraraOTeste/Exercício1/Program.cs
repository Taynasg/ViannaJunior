//Questão 1) Faça um procedimento que receba por parâmetro um número inteiro e escreva “par”
// se o número recebido por parâmetro for par. Caso contrário, o procedimento deve escrever “ímpar”. 
//No método principal (Main), leia um número inteiro e passe-o por parâmetro para o procedimento criado.

class Program
{
  static void ReceberNumero(int numero)
  {
    if (numero % 2 == 0)
    {
      Console.Write("Par");
    }
    else
    {
      Console.Write("Ímpar");
    }
  }
    static void Main(string[] args)
    {
      Console.Write("Digite um número: ");
      int numero = Convert.ToInt32(Console.ReadLine());
      ReceberNumero(numero);
    }

  }
