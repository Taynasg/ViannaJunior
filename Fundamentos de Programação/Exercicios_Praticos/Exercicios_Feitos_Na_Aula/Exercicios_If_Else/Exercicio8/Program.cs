//8) Elaborar um algoritmo para ler o código 
//de um produto e informar a sua origem:
//a) Código do produto entre 1 e 20: Europa
//b) Código do produto entre 21 e 40: Ásia
//c) Código do produto entre 41 e 60: América
//d) Código do produto entre 61 e 80: África
//e) Código do produto maior que 80: Paraguai

class Program
{
  static void Main(string[] args)
  {
    int codigo;
    Console.Write("Digite o código do produto: ");
    codigo = Convert.ToInt32(Console.ReadLine());
    if (codigo > 1 && codigo <= 20)
    {
      Console.Write("Europa");
    }
    else if (codigo >= 21 && codigo <= 40)
    {
      Console.Write("Ásia");
    }
    else if (codigo > 41 && codigo <= 60)
    {
      Console.Write("América");
    }
    else if (codigo >= 61 && codigo <= 80)
    {
      Console.Write("África");
    }
    else if (codigo > 80)
    {
      Console.Write("Paraguai");
    }
      else{
        Console.Write("Código inválido!");
      }
  }
}