package somativa1;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serializable;
import java.util.Scanner;

public class Estudante implements Serializable{
	private String nomeCompleto;
	public Estudante() {
		this.nomeCompleto= escreverCampo("Nome Completo");
	}
	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = escreverCampo("nome completo");
	}
	public String getNomeCompleto() {
		return nomeCompleto;
	}
	public static String escreverCampo(String campo){
		Scanner scanner = new Scanner(System.in);
		String nome;
		System.out.println("Digite o "+(campo)+": ");
		nome = scanner.nextLine();
		return nome;
	}

	public String toString() {
		return "Nome completo: "+nomeCompleto;
	}
		
}
