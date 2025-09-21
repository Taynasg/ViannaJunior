// Escrever um algoritmo que lê um valor N inteiro e positivo e que calcula e 
//escreve o valor de E.
//E = 1 + 1/1! + 1/2! + 1/3! + ... + 1/N!

class Program
{
    static int CauculaFatorial(int valorDigitado)
    {
        for (int fatorial = 0; valorDigitado <= 1; valorDigitado--)
        {
            fatorial = 1 + 1/valorDigitado;
        }
        return fatorial;
    }
    static void Main(string[] args)
    {
        int valorDigitado;
      
        Console.Write("Escreva um inteiro e positivo: ");
        valorDigitado = Convert.ToInt32((Console.ReadLine()));
        CauculaFatorial(valorDigitado);
        Console.Write("O fatorial de {0} é: {1} ", valorDigitado);
    }
}