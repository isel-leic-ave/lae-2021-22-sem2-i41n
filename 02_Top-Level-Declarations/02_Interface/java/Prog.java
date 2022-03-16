public final class Prog {
	
	public static final void main() {

		// Example of a declaration without type inference
		final AnInterface ii = new ClassWithInterface();

		ii.mi();

		// Example of an explicit downcast
		final var cwi = (ClassWithInterface)ii; 

		cwi.mcwi();
	}

	public static void main(String[] args) { main(); }
}
