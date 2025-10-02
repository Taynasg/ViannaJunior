public class Main {
    public static void main(String[] args) {
        System.out.println("======================================");
        System.out.println("         FORMAS DE PAGAMENTO ");
        System.out.println("======================================");

        Pagamento Boleto = new Boleto("12345", 20251020);
        Pagamento CartaoCredito = new CartaoCredito("11111222","Joao","20/10/2030");
        Pagamento Pix = new Pix("123","Bradesco");

        System.out.println(Boleto.pagar(10));
        System.out.println(CartaoCredito.pagar(20));
        System.out.println(Pix.pagar(30));

    }



}
