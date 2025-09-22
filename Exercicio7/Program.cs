// 7) Desenvolver um algoritmo para ler o valor 
//inteiro da idade de uma pessoa e imprimir 
//uma das mensagens: se idade < 13: 
//Criança, se 13 ≤ idade < 20: Adolescente, 
//se 20 ≤ idade < 60: Adulto e se idade ≥ 60: 
//Idos

class Program
{
  static void Main(string[] args){
    Console.Write("Digite sua idade: ");
    int idade = Convert.ToInt32(Console.ReadLine());

    if(idade > 0 && idade < 13){
      Console.Write("Criança");
    }
    else if(idade>=13 && idade < 20){
      Console.Write("Adolescente");
    }

     else if(idade >= 20 && idade < 60){
      Console.Write("Adulto(a)");
    }

     else if(idade >= 60){
      Console.Write("Idoso(a)");
    }

     else {
      Console.Write("Idade inválida");
    }
  }
}
