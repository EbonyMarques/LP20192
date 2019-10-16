package exercicio_concorrencia;

public class Incrementador extends Thread {
	private Contador contador;
	private int quantidade;
	
	public Incrementador(Contador c, int q) {
		this.contador = c;
		this.quantidade = q;
	}
	
	public void run() {
		for(int i = 0; i < this.quantidade; i++) {
			try {
				this.contador.incr();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
