public class Aluno
{    
    //Atributos
    String nome;
    int nota;
    
    //Metodo Construtor
    public Aluno(String n, int nt){
        nome = n;
        nota = nt;
    }
   /* public Aluno(String n, int matri){
        nome = n;
        matricula = matri;
    }*/
    public Aluno(int nt, String n){
        nome = n;
        nota = nt;
    }
    public Aluno(String n){
        nome = n;
        nota = 0;
    }
    public Aluno(int n){
        nome = "";
        nota = n;
    }
    public Aluno(){
        nome = "";
        nota = 0;
    }
    //Metodo
    public boolean estaAprovado(){
        return (nota >= 7);
    }
    
}

