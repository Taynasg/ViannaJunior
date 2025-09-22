// 3) Altere o algoritmo anterior para que seja 
//informado se o número é divisível por 2 e 
//por 3 simultaneamente.
class Program
{
    static void Main(string[] args){
        int numero;
        Console.Write("Digite um número inteiro ");
        numero = Convert.ToInt32(Console.ReadLine());
        if(numero %2 == 0 && numero %3 == 0){
            Console.WriteLine("{0} é divisível por 2 e por 3", numero);
        }else{
            Console.WriteLine("{0} não é divisível por 2 e por 3", numero);
        }
    }
}
