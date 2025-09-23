//1) Faça uma função que receba um inteiro N por parâmetro e leia N 
//números reais informados pelo usuário.
//A função deve retornar a quantidade de números positivos lidos.

class Program
{
    static int receberNumeros(int N)
    {
        int quantidadeDeNumeros = 0;
        for (int i = 0; i < N; i++)
        {
            Console.WriteLine("{0} número de {1} ", i,N  );
        if (i>0)
        {
            quantidadeDeNumeros ++;
        }
        }
        

        return quantidadeDeNumeros;
    }
    static void Main(string args[])
    {

    }
}
