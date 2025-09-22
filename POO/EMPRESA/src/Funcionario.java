public class Funcionario{
     
     String nome;
     String cargo;
     double salarioBase;

    public void Funcionario() {


     }

    public Funcionario(String nome) {
        this.nome = nome;

     }

    public Funcionario(String nome,double salarioBase  ) {
        this.nome = nome;
        this.cargo = cargo;
    }
    public Funcionario(String nome,String cargo,double salarioBase  ) {
        this.nome = nome;
        this.cargo = cargo;
        this.salarioBase = salarioBase;
     }
}
