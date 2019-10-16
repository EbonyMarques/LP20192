package exercicio_concorrencia;

public class Contador {
	private int limiteSuperior;
	private int limiteInferior;
	private int valor;
	
	public Contador(int s, int i, int v) {
		this.limiteSuperior = s;
		this.limiteInferior = i;
		this.valor = v;
	}
	
	public synchronized void incr() throws InterruptedException {
		while(this.valor == this.limiteSuperior) {
			this.wait();
		}
		
		this.valor++;
		this.notifyAll();
	}
	
	public synchronized void decr() throws InterruptedException {
		while(this.valor == this.limiteInferior) {
			this.wait();
		}
		
		this.valor--;
		this.notifyAll();
	}
	
	public int getValor() {
		return this.valor;
	}
}
