// Construa um programa que aplique um 
//desconto de 25% sobre o preço de um 
//produto recebido como entrada e imprima o 
//valor resultante.
class Program{
  static void Main(){
    double numeroDigitado;
    double valorDescontado;
    double valorFinal;
    Console.WriteLine("Coloque um preço e eu aplicarei um desconto de 25% nele");
    numeroDigitado = Convert.ToDouble(Console.ReadLine());
    valorDescontado = 25*(numeroDigitado/100);
    valorFinal = numeroDigitado - valorDescontado;
    Console.Write("O valor final é {0,N2}",  valorFinal );
  }
}
