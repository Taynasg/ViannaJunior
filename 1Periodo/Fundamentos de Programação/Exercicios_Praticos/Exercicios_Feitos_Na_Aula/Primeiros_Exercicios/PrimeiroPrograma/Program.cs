class Program
{
    static void Main(string[] args)
    {
        int idade;
   
        Console.Write("Informe a sua idade: ");
        idade = Convert.ToInt32(Console.ReadLine());                     
   
        Console.WriteLine("Em 2026 você terá {0} anos ", idade +1);
    }
}


