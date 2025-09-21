class Program
{
    static int
    static void Main(string[] args)
    {
        int vogais = 0;

        Console.WriteLine("Digite uma palavra:");
        string palavra = Console.ReadLine();

        for (int i = 0; i < palavra.Length; i++)
        {
            if (palavra[i] == 'a' || palavra[i] == 'A' ||
                palavra[i] == 'e' || palavra[i] == 'E' ||
                palavra[i] == 'i' || palavra[i] == 'I' ||
                palavra[i] == 'o' || palavra[i] == 'O' ||
                palavra[i] == 'u' || palavra[i] == 'U')
            {
                vogais++;
            }
        }

        Console.WriteLine("Essa palavra tem {0} vogais.", vogais);
    }
}