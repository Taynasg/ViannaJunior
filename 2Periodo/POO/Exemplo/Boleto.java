public class Boleto implements Pagamento {

    private String codigoBarras;
    private int dataVencimento;

    public Boleto(String codigoBarras, int dataVencimento) {
        this.codigoBarras = codigoBarras;
        this.dataVencimento = dataVencimento;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    public int getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(int dataVencimento) {
        this.dataVencimento = dataVencimento;
    }

    @Override
    public double pagar(double valor) {
        System.out.println("Pagando valor " + valor + " com Boleto (código: " + codigoBarras + ")");
        return valor;
    }
}