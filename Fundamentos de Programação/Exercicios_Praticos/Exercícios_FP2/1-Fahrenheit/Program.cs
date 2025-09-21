//1.Faça um programa que lê uma temperatura em 
//graus Celsius e apresenta-a convertida em graus 
//Fahrenheit. A fórmula de conversão: F ← 
//(9*C+160)/5

class Program{
  static void Main(string[] args){
    double TemperaturaEmGrausCelcius;
    double TemperaturaEmGrausFahrenheit;

    Console.WriteLine("Digite uma temperatura em graus celcius e eu converterei para Fahrenheit");
    TemperaturaEmGrausCelcius = Convert.ToDouble(Console.ReadLine());
    TemperaturaEmGrausFahrenheit = (9*TemperaturaEmGrausCelcius+160)/5;
    Console.WriteLine(TemperaturaEmGrausCelcius + " graus celcius equivale a " + TemperaturaEmGrausFahrenheit + " graus Fahrenheit");
  }
}