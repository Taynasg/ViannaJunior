//5) Desenvolver um algoritmo para ler o número 
//do dia da semana e imprimir o seu 
//respectivo nome por extenso. Considerar o 
//número 1 como domingo, 2 para segunda 
//etc. Caso o dia da semana não exista 
//(menor do que 1 ou maior do que 7), exibir a 
//mensagem “Dia da semana inválido". 

class Program
{
  static void Main(string[] args)
  {
    int numeroEscolhido;
    Console.Write("Insira um número de 1 a 7 para representar um dia da semana: ");
    numeroEscolhido = Convert.ToInt32(Console.ReadLine());

    if (numeroEscolhido == 1)
    {
      Console.Write("Domingo");
    }
    else if (numeroEscolhido == 2)
    {
      Console.Write("Segunda-Feira");
    }
    else if (numeroEscolhido == 3)
    {
      Console.Write("Terça-Feira");
    }
    else if (numeroEscolhido == 4)
    {
      Console.Write("Quarta-Feira");
    }
    else if (numeroEscolhido == 5)
    {
      Console.Write("Quinta-Feira");
    }
    else if (numeroEscolhido == 6)
    {
      Console.Write("Sexta-Feira");
    }
    else if (numeroEscolhido == 7)
    {
      Console.Write("Segunda-Feira");
    }
    else{
      Console.Write("Dia da semana inválido");
    }
  }
}