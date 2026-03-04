public class Principal
{
    // Main tem duas responsabilidades
    // Leitura
    // Sada e aou escrita
    
    public static void main(String args[] ){
    
        System.out.println("###Sys Mdias###");
        Aluno a1 = new Aluno("Pedrin da Silva", 6);
        //System.out.println(a1.nome);
        Aluno a2 = new Aluno("Zezin Rozeira", 2);
        //System.out.println(a2.nome);    
    
    if(a1.estaAprovado()){ 
            System.out.println(a1.nome + "esta aprovado");     
    }else{
        System.out.println(a1.nome + "esta reprovado");
    }
    
    if(a2.estaAprovado()){
        System.out.println(a2.nome + "esta aprovado");     
    }else{
    System.out.println(a2.nome + "esta reprovado");
    }
    
    Professor prof = new Professor(a1, a2);
    Aluno maior = prof.alunoMaiorNota();
    System.out.println("Aluno com maior nota" + maior.nome + "sua nota e " + maior.nota);
    }
 
}