import java.util.ArrayList;
import java.util.List;

public class MeuBD {
    private List<ContaCorrente> contas;

    //CONSTRUCTOR
    public MeuBD() {
        contas = new ArrayList<>();
    }

    //NEW ACCOUNT
    public void novo(ContaCorrente conta) {
        contas.add(conta);
    }

    //SEARCH ACCOUNT
    public ContaCorrente pegar(int numero) {
        for (ContaCorrente conta : contas) {
            if (conta.getNumero() == numero) {
                return conta;
            }
        }
        return null;
    }

    //LIST ACCOUNTS
    public void listaCli() {
        System.out.println("--------- Relação de clientes do banco FEMA -----------");
        for (ContaCorrente conta : contas) {
            System.out.println("Nome:" + conta.getDono().getNome() + ", Saldo = R$" + conta.getSaldo());
        }
    }
}