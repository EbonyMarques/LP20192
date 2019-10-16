package exercicio_concorrencia;

public class Decrementador extends Thread {
	private Contador contador;
	private int quantidade;
	
	public Decrementador(Contador c, int q) {
		this.contador = c;
		this.quantidade = q;
	}
	
	public void run() {
		for(int i = 0; i < this.quantidade; i++) {
			try {
				this.contador.decr();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
