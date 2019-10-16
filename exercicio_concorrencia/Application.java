package exercicio_concorrencia;

import exercicio.util.*;

public class Application {
	public static void main(String[] args) throws InterruptedException {
		Contador contador = new Contador(100000, 0, 0);
		ThreadsList<Thread> threadsList = new ThreadsList<Thread>();
		
		for(int i = 0; i < 2; i++) {
			Incrementador incrementador = new Incrementador(contador, 50000);
			threadsList.add(incrementador);
		}
		
		for(int i = 0; i < 4; i++) {
			Decrementador decrementador = new Decrementador(contador, 25000);
			threadsList.add(decrementador);
		}
		
		threadsList.start();
		threadsList.join();
		
		System.out.println(contador.getValor());
		
	}
}
