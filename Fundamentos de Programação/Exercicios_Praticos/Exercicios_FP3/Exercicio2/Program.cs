//2) Faça uma função que receba o valor de um produto 
//e um percentual de desconto. A função deve retornar 
//o valor do produto após a aplicação do desconto.

class Program
{
    static double CalculaValorComDesconto(double valorProduto, double valorDesconto) {
        
        double valorFinal = valorProduto - (valorDesconto/100) * valorProduto; 
        return valorFinal;
    }
    static void Main(string[] args){

       Console.Write(CalculaValorComDesconto(100,20)); 

    }
}