class Program{
  static void Main(string[] args){
// Faça um programa que leia os três lados de um 
//triângulo, calcule e imprima seu perímetro

double lado1;
double lado2;
double lado3;
double perímetro;

Console.WriteLine("Digite as medidas dos três lado de um triângulo e vou te mostrar o perímetro dele em centímetros");

Console.Write("Lado 1: ");
lado1 = Convert.ToDouble(Console.ReadLine());
Console.Write("Lado 2: ");
lado2 = Convert.ToDouble(Console.ReadLine());
Console.Write("Lado 3: ");
lado3 = Convert.ToDouble(Console.ReadLine());
perímetro = lado1 + lado2 + lado3;
Console.Write("O perímetro desse triângulo é " + perímetro + " centímetro(s)");

  }
}