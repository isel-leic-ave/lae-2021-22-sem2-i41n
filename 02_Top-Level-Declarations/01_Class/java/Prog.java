// No top-level functions in Java: main must be a class method.
public final class Prog {

	// 'static' indicates that this member is not associated with an instance
	public static final void main() {

		// 'final var' here is similar to Kotlin 'val' with type inference
		final var rc = new RegularClass(); 

		rc.mrc();
	}

	// Official main method calling an alternative overload
	public static void main(String[] args) { main(); }
}
