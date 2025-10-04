class Program
{
    static void Main()
    {
        // Vetor inicial
        int[] vetor = { 5, 2, 4, 1, 3 };
        int aux = 0;

        Console.WriteLine("Vetor original:");
        Console.WriteLine(string.Join(", ", vetor));
        Console.WriteLine();

        // Bubble Sort
        for (int i = 0; i < vetor.Length - 1; i++)
        {
            for (int j = 0; j < vetor.Length - i - 1; j++)
            {
                if (vetor[j] > vetor[j + 1]) 
                {
                    aux = vetor[j];
                    vetor[j] = vetor[j + 1];
                    vetor[j + 1] = aux;
                }
            }

            Console.WriteLine($"Passagem {i + 1}: {string.Join(", ", vetor)}");
        }

        Console.WriteLine();
        Console.WriteLine("Vetor ordenado (crescente):");
        Console.WriteLine(string.Join(", ", vetor));
    }
}