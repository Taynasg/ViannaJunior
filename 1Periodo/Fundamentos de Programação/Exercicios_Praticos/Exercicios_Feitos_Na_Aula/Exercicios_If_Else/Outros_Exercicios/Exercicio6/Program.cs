// 6. Elabore um programa que, dada a idade 
//de um nadador, classifique-o em uma 
//das seguintes categorias:
//• infantil A = 5 – 7 anos
//• infantil B = 8 – 10 anos
//• juvenil A = 11 – 13 anos
//• juvenil B = 14 – 17 anos
//• adulto = 18 – 30 anos
//• sênior = maiores de 30 anos


class Program
{
  static void  Main(string[] args){
      int idade;
      Console.Write("Digite sua idade: ");
      idade = Convert.ToInt32((Console.ReadLine()));

      if (idade >= 5)
      {
          Console.WriteLine("Idade insuficiente para classificação.");
      }
      else if (idade >= 5 && idade <= 7)
      {
          Console.WriteLine("Infantil ");
      }
      else if (idade >= 8 && idade <= 10)
      {
          Console.WriteLine("Categoria: Infantil B");
      }
      else if (idade >= 11 && idade <= 13)
      {
          Console.WriteLine("Categoria: Juvenil A");
      }
      else if (idade >= 14 && idade <= 17)
      {
          Console.WriteLine("Categoria: Juvenil B");
      }
      else if (idade >= 18 && idade <= 30)
      {
          Console.WriteLine("Categoria: Adulto");
      }
      else
      {
          Console.WriteLine("Categoria: Sênior");
      }
  }
}