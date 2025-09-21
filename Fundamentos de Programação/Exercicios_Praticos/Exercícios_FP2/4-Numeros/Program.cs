// Faça um programa que leia um número inteiro 
//e imprima o seu antecessor e sucessor
class Program
{
  static void Main(string[] args)
  {
    int numeroEscolhido;
    int antecessor;
    int sucessor;
    Console.Write("Digite um número e eu te direi o antecessor e o sucessor dele: ");
    numeroEscolhido = Convert.ToInt32(Console.ReadLine());
    sucessor = numeroEscolhido + 1;
    antecessor = numeroEscolhido - 1;
    Console.Write("O antecessor de " + numeroEscolhido + " é " + antecessor + " e o sucessor é " + sucessor);
  }
}

