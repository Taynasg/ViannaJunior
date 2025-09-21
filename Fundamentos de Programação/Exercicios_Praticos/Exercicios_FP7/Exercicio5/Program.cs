// 5) Escreva um programa para ler uma string (com mais de 
//uma palavra) e imprimi-la de forma que a primeira letra de 
//cada palavra fique em maiúscula. Para isso, basta subtrair 
//32 do elemento que deseja alterar para maiúsculo. 
//Console.Write("{0} ", Convert.ToChar(chrNomeRecebido[i] – 32));
//ou Console.Write("{0} ", Convert.ToChar(chrNomeRecebido[i] – 'a' + 'A' ));
//Exemplo:
//Entrada: lab. de linguagem de programacao
//Impressão: Lab. De Linguagem De Programacao

class Program
{
    static void Main(string[] args)
    {
        Console.Write("Digte uma palavra: ");
        string chrNomeRecebido = Console.ReadLine();
        System.Console.Write("Palavra digitada: {0} ", chrNomeRecebido);
        Console.Write("{0} ", Convert.ToChar(chrNomeRecebido[i] – 32));
    }
}