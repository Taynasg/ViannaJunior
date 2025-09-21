// 1. Faça um programa que leia dois números 
//inteiros e faça a divisão do primeiro pelo 
//segundo (se o segundo for diferente de 
//zero).

class Program
{
    static void Main(string[] args)
    {
        double primeiroNumero;
        double segundoNumero;
        double resultado;

        Console.Write("Digite um número: ");
        primeiroNumero = Convert.ToInt32(Console.ReadLine());

        Console.Write("Digite outro número: ");
        segundoNumero = Convert.ToInt32(Console.ReadLine());
        if (segundoNumero > 0)
        {
            resultado = primeiroNumero / segundoNumero;
            Console.WriteLine(resultado);
        }
        else
        {
            Console.Write("Não é possivel fazer essa divisão");
        }


    }
}