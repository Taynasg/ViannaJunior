class Program
{

    static int RetornarMaiorNumero(int primeiroNumero, int segundoNumero, int terceiroNumero)
    {
        int maiorNumero = primeiroNumero;
        if (primeiroNumero >= segundoNumero && primeiroNumero >= terceiroNumero)
        {
            maiorNumero = primeiroNumero;
        }

        if (segundoNumero >= primeiroNumero && segundoNumero >= terceiroNumero)
        {
            maiorNumero = segundoNumero;
        }
        if (terceiroNumero >= primeiroNumero && terceiroNumero >= segundoNumero)
        {
            maiorNumero = terceiroNumero;
        }

        return maiorNumero;
    }
    static void Main(string[] args)
    {

        Console.Write("Digite o primeiro número: ");
        int primeiroNumero = Convert.ToInt32(Console.ReadLine());

        Console.Write("Digite o segundo número: ");
        int segundoNumero = Convert.ToInt32(Console.ReadLine());

        Console.Write("Digite o terceiro número: ");
        int terceiroNumero = Convert.ToInt32(Console.ReadLine());

        Console.Write(RetornarMaiorNumero(primeiroNumero, segundoNumero, terceiroNumero));



    }
}

