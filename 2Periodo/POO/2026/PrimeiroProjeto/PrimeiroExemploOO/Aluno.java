public class Aluno
{
    private String nome;
    private int nota;


    public Aluno(String n, int nt)
    {
        nome = n;
        nota = nt;
    }

  
    public boolean estaAprovado()
    {
        if(nota >= 7){
            return true;
        }
        return false;
    }
}