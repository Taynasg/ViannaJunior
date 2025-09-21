
//Faça um programa que leia o nome e a 
//idade de cinco pessoas. Oprograma deve
//imprimir uma lista contendo o nome e a
//idade de cada pessoa e no final, deve
//imprimir a média das idades informadas
class Program
{
    static void Main()
    {
        string nome1;
        string nome2;
        string nome3;
        string nome4;
        string nome5;

        int idade1;
        int idade2;
        int idade3;
        int idade4;
        int idade5;
        
        double media; 
        Console.WriteLine("Escreva seu nome");
        nome1 = Console.ReadLine();
        Console.WriteLine("Escreva sua idade");
        idade1 = Convert.ToInt32(Console.ReadLine());
          Console.WriteLine("Escreva seu nome");
        nome2 = Console.ReadLine();
        Console.WriteLine("Escreva sua idade");
        idade2 = Convert.ToInt32(Console.ReadLine());
          Console.WriteLine("Escreva seu nome");
        nome3 = Console.ReadLine();
        Console.WriteLine("Escreva sua idade");
        idade3 = Convert.ToInt32(Console.ReadLine());
          Console.WriteLine("Escreva seu nome");
        nome4 = Console.ReadLine();
        Console.WriteLine("Escreva sua idade");
        idade4 = Convert.ToInt32(Console.ReadLine());
          Console.WriteLine("Escreva seu nome");
        nome5 = Console.ReadLine();
        Console.WriteLine("Escreva sua idade");
        idade5 = Convert.ToInt32(Console.ReadLine());
        
        media = (idade1 + idade2 + idade3 + idade4 +idade5)/5;
        Console.WriteLine("Nome:{0} Idade{1}: ",nome1, idade1);
        Console.WriteLine("Nome:{0} Idade{1}: ",nome2, idade2);
        Console.WriteLine("Nome:{0} Idade{1}: ",nome3, idade3);
        Console.WriteLine("Nome:{0} Idade{1}: ",nome4, idade4);
        Console.WriteLine("Nome:{0} Idade{1}: ",nome5, idade5);
        Console.WriteLine("A média das idades é:{0} ",media);


    }
}