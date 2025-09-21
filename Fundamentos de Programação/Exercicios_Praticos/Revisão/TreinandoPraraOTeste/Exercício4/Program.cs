// Questão 4) Faça uma função que receba por parâmetro um número inteiro e retorne “par” se o número recebido por parâmetro for par. Caso contrário, a função deve retornar “ímpar”. No método principal (Main), leia um número inteiro e passe-o por parâmetro para a função criada, imprimindo em seguida o seu retorno.

class Program
{
	static int RetornaNumero(int numero)
	{
		if (numero % 2 == 0)
		{
			Console.Write("Par");
		}
		else
		{
			Console.Write("Ímpar");
		}
		return numero;
	}
	static void Main(string[] args)
	{
		Console.Write("Digite um número: ");
		int numero = Convert.ToInt32(Console.ReadLine());
		RetornaNumero(numero);
	}

}
