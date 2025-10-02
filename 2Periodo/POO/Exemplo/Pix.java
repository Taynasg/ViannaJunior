public class Pix implements Pagamento {

    private String chavePix;
    private String banco;

    public Pix(String chavePix, String banco) {
        this.chavePix = chavePix;
        this.banco = banco;
    }

    public String getChavePix() {
        return chavePix;
    }

    public void setChavePix(String chavePix) {
        this.chavePix = chavePix;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    @Override
    public double pagar(double valor) {
        System.out.println("Pagando valor " + valor + " via Pix (chave: " + chavePix + ")");
        return valor;
    }
}