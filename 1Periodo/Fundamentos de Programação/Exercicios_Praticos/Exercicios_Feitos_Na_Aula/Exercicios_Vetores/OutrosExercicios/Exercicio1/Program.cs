//Faça um procedimento que receba um vetor de númmeros reais por
//parâmetro e inverta os elementos deste vetor.
//Exemplo: o vetor[1,2,3,4,5,6] deve terminar dessa forma [6,5,4,3,2,1] 

class Program
{

    static void inverter(double[] vetor){

     int[] vetor = new int[5]{1,2,3,4,5};

        int[] numerosInvertidos = new int[5];
        numerosInvertidos[5] = vetor[5];
        numerosInvertidos[4] = vetor[4];
        numerosInvertidos[3] = vetor[3];
        numerosInvertidos[2] = vetor[2];
        numerosInvertidos[1] = vetor[1];
        Console.Write(numerosInvertidos);
    }
    static void Main(string[] args){

    inverter(vetor);
        
    }
}