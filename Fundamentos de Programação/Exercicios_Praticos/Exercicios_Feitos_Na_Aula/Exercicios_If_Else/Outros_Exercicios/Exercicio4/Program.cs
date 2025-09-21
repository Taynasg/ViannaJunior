//4. Faça um programa que leia 3 comprimentos 
//(x, y e z) e responda se eles formam um 
//triângulo, ou seja, se 
//x < y + z e y < x + z e z < x + y.

class Program
{
  static void  Main(string[] args)
  {
    double x;
    double y;
    double z;

    Console.Write("Digite o primeiro lado do triângulo: ");
    x = Convert.ToDouble((Console.ReadLine()));

    Console.Write("Digite o segundo lado do triângulo: ");
    y = Convert.ToDouble((Console.ReadLine()));

    Console.Write("Digite o terceiro lado do triângulo: ");
    z = Convert.ToDouble((Console.ReadLine()));

    if((x < y + z) && (y < x + z) && (z < x + y)){
      Console.Write("Os três lados formam um triângulo");
    }else{
      Console.Write("Os três lados não formam um triângulo");
    }
  }
}