public class Professor
{
    //Aluno aluno1, aluno2;
    Aluno alunos[];

    public Professor(Aluno a1,Aluno a2)
    {
        //aluno1 = a1;
        //aluno2 = a2 ;
        alunos = new Aluno[2];
        alunos[0] = a1;
        alunos[1] = a2;
    }

    public Aluno alunoMaiorNota() {
       /* if(alunos[0].nota > alunos[1].nota){
            return alunos[0];
        }
        return alunos[1];
     */
    Aluno aMaior = alunos[0];
    for(Aluno a : alunos){
    if(a.nota > aMaior.nota){
        aMaior = a;
    }
    }
    return aMaior;
    }
}