//2) Ler um número inteiro e informar se ele é 
//divisível por 2.

class Program
{
    static void Main(string[] args){
        int numero;
        Console.Write("Digite um número inteiro ");
        numero = Convert.ToInt32(Console.ReadLine());
        if(numero %2 == 0){
            Console.WriteLine("{0} é divisível por 2", numero);
        }else{
            Console.WriteLine("{0} não é divisível por 2", numero);
        }
    }
}