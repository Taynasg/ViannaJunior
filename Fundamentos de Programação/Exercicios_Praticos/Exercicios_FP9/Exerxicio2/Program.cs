// 1) Defina uma classe para representar as informações de um 
//cartão de crédito. No método principal (Main) da classe 
//Program, instancie dois objetos do tipo da classe criada, 
//atribua valores a cada atributo dos objetos e imprima todos os 
//atributos do segundo objeto instanciado.

class Program
{
    static void Main(string[] args)
    {
        Cartao cartao1 = new Cartao();
        cartao1.nomeDoTitular = "Joao";
        cartao1.numeroDoCartao = 123456789;
        cartao1.cvv = 123;

        Cartao cartao2 = new Cartao();
        cartao2.nomeDoTitular = "Maria";
        cartao2.numeroDoCartao = 987654321;
        cartao2.cvv = 321;

        Console.WriteLine("Valores do cartão 2");
        Console.WriteLine("Nome: {0} ", cartao2.nomeDoTitular);
        Console.WriteLine("Numero do cartao: {0}", cartao2.numeroDoCartao);
        Console.WriteLine("CVV: {0}", cartao2.cvv);
   
    }
}
