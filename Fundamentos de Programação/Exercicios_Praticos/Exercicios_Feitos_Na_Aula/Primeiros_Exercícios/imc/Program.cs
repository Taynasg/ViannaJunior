class Program
{
    static void Main(string[] args)
    {
        double altura;
        double peso;
        double imc;

        Console.Write("Informe a sua altura:");
        altura = Convert.ToDouble(Console.ReadLine());
        Console.Write("Informe o seu peso:");
        peso = Convert.ToDouble(Console.ReadLine());

        //imc = peso/(altura* altura);
        imc = peso/Math.Pow(altura,2);

        Console.Write("IMC {0}", imc);
        Console.Write("Tecle <Enter> para fechar ")

    }
}
