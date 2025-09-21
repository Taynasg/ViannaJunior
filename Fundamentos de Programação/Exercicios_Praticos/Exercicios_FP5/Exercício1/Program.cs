// 1. Fazer um algoritmo que imprima todos os números 
//pares no intervalo de 1 a 100.

class Program
{
    static void Main(string[] args){
        int numerosImpressos =1;
        while (numerosImpressos <=100)
        {
            numerosImpressos++;
            if (numerosImpressos%2==0)
            {

            Console.WriteLine(numerosImpressos);    
            }
            
        }
    }
}

