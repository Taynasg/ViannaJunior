// 9) Para auxiliar os vendedores de uma loja na 
//orientação aos clientes sobre as diversas 
//formas de pagamento, desenvolver um 
//algoritmo para:
//a) Imprimir o seguinte menu:
//b) Ler o código da opção de pagamento.
// c) Imprimir uma das mensagens de acordo com 
//a opção lida:

class Program
{
  static void Main(string[] args)
  {
    int opcao;
    Console.WriteLine("Forma de pagamento: ");
    Console.WriteLine("1 - À vista.");
    Console.WriteLine("2 - Cheque para trinta dias.");
    Console.WriteLine("3 - Em duas vezes.");
    Console.WriteLine("4 - Em três vezes.");
    Console.WriteLine("5 - Em quatro vezes.");
    Console.WriteLine("6 - A partir de cinco vezes.");
    Console.Write("Entre com sua opção: ");
    opcao = Convert.ToInt32(Console.ReadLine());
    if (opcao == 1)
    {
      Console.Write("Desconto de 20%");
    }
    else if (opcao == 2 || opcao == 3 || opcao == 4)
    {
      Console.Write("Mesmo preço a vista");
    }

    else if (opcao == 5)
    {
      Console.Write("Juros de 3% ao mês");
    }

    else if (opcao == 6)
    {
      Console.Write(" Juros de 5% ao mês");
    }

    else
    {
      Console.Write("Opção inválida! Por favor, tente novamente!");
    }


  }
}