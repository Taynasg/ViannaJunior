//1) Ler dois números inteiros e informar se o 
//primeiro valor lido é maior, menor ou igual 
//ao segundo.

class Program
{
    static void Main(string[] args)
    {
        int primeiroNumero;
        int segundoNumero;

        Console.Write("Digite um número inteiro: ");

        primeiroNumero = Convert.ToInt32(Console.ReadLine());

        Console.Write("Digite outro número inteiro: ");

        segundoNumero = Convert.ToInt32(Console.ReadLine());
        if (primeiroNumero > segundoNumero)
        {
            Console.WriteLine("O {0} é maior que o {1}", primeiroNumero, segundoNumero);

        }
        else if (primeiroNumero < segundoNumero)
        {

            Console.WriteLine("O {0} é menor que o {1}", primeiroNumero, segundoNumero);

        }
        else {

            Console.WriteLine("O {0} é igual ao {1}", primeiroNumero, segundoNumero);
        }

    }
}