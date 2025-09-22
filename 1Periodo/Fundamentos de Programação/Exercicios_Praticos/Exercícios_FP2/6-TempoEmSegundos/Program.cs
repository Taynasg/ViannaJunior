// Construa um programa para ler um intervalo 
//de tempo em segundos, converter para 
//horas, minutos e segundos e imprimir o 
//resultado

class Program
{
  static void Main(string[] args)
  {
    double intervaloDeTempoEmSegundos;
    double valorEmHoras;
    double valorEmMinutos;

    Console.WriteLine("Digite um intervalo de tempo em segundos, e eu vou convertê-lo para horas, minutos e segundos");
    intervaloDeTempoEmSegundos = Convert.ToDouble(Console.ReadLine());
    valorEmHoras = intervaloDeTempoEmSegundos / 3600;
    intervaloDeTempoEmSegundos = intervaloDeTempoEmSegundos % 3600;
    valorEmMinutos = intervaloDeTempoEmSegundos / 60;
    intervaloDeTempoEmSegundos = intervaloDeTempoEmSegundos % 60;

    Console.WriteLine("{0}:{1}:{2}", valorEmHoras, valorEmMinutos, intervaloDeTempoEmSegundos);
  }
}
