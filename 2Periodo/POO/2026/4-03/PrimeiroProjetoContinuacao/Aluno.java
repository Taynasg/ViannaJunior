public class Aluno
{
    // Atributos
     String nome;
     int nota;


    public Aluno(String n, int nt)
    {
        nome = n;
        nota = nt;
    }

    // Mtodos construtor
    public Aluno()
    {

    }

    
    public Aluno(String n)
    {
        nome = n;
    }

    
    public Aluno(int nt)
    {
        nota = nt;
    }

    
    public Aluno( int nt, String n)
    {
        nota = nt;
        nome = n;
    }

    //Calculos -- Mtodos     
    public boolean estaAprovado()
    {
        if(nota >= 7){
            return true;
        }
        return false;
    }
}