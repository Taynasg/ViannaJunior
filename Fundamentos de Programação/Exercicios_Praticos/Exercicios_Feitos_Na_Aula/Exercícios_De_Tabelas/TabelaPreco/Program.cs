class Program
{
    static void Main(string[] args)
    {
        string descricao1 = "Coca-Cola", descricao2 = "Fanta", descricao3 = "Café";
        string descricao4 = "Biscoito de Polvilho";
        double preco1 = 10.52, preco2 = 100, preco3 = 5000, preco4 = 20, total;
        total = preco1 + preco2 + preco3 + preco4;

        total = preco1 + preco2 + preco3 + preco4;
        Console.WriteLine("{0,-20} {1,10:N2}", descricao1, preco1);
        Console.WriteLine("{0,-20} {1,10:N2}", descricao2, preco2);
        Console.WriteLine("{0,-20} {1,10:N2}", descricao3, preco3);
        Console.WriteLine("{0,-20} {1,10:N2}", descricao4, preco4);
        Console.WriteLine("--------------------------------------");
        Console.WriteLine("{0,-20} {1,10:N2}", "Total:", total);

    }
}