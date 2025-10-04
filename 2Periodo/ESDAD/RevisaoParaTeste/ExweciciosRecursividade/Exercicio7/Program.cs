//7. Escreva uma função recursiva para calcular o n-ésimo número da série de
//Fibonacci.

class Program
{
    public static void Main(string[] args)
    {
        int numero = 10; // até onde vai a sequência

        Console.WriteLine($"Sequência de Fibonacci até {numero}:");
        for (int i = 0; i <= numero; i++)
        {
            Console.Write(CalcularFibonacci(i) + " ");
        }
    }

    public static int CalcularFibonacci(int numero)
    {
        if (numero == 0) return 0;   
        if (numero == 1) return 1;   

        return CalcularFibonacci(numero - 1) + CalcularFibonacci(numero - 2);
    }
}
