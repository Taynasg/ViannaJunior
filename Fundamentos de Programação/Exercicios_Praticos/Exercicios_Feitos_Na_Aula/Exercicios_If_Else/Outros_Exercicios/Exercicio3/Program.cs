//3. Tendo como dados de entrada a altura e o 
//sexo de uma pessoa, construa um 
//programa que calcule seu peso ideal, 
//utilizando as seguintes fórmulas:
//para homens: (72.7*h)-58
//para mulheres: (62.1*h)-44.7

class Program
{
  static void Main(string[] args)
  {
    double altura;
    char sexo;
    double peso;

    Console.Write("Digite sua altura: ");
    altura = Convert.ToDouble(Console.ReadLine());
    Console.Write("Digite seu gênero: ");
    sexo = Convert.ToChar(Console.ReadLine());

    if (sexo == 'm' || sexo == 'M')
    {
      peso = (72.7 * altura) - 58;
      Console.Write("Seu peso ideal é: {0}", peso);
    }
    else if (sexo == 'f' || sexo == 'F')
    {
      peso = (62.1 * altura) - 44.7;
      Console.Write("Seu peso ideal é: {0}", peso);
    }
    else
    {
      Console.Write("Caracter inválido! Por favor tente novamente!");
    }

  }
}
