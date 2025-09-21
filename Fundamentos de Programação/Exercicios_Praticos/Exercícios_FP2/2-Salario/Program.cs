// Faça um programa que lê um valor de salário 
//mínimo e o salário de um funcionário. O programa 
//deve calcular e imprimir quantos salários mínimos 
//esse funcionário ganha.

class Program {
  static void Main(string[] args){
    double salario;
    double mediaDeSalariosMinimos; 
    Console.Write("Digite o quanto você ganha: ");
    salario = Convert.ToDouble(Console.ReadLine());
    mediaDeSalariosMinimos = salario/1518;
    Console.Write("Você ganha em torno de " + mediaDeSalariosMinimos + " salário(s) mínimo(s)");
  }
}