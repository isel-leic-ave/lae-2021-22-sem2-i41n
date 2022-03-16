public final class ClassWithProperties {

	// Java fields for data storage are always explicit.
	private final String txt;
	private double flt;
	private final int num;

	// Constructors are declared in the class body along with other methods.
	// Constructor parameters are only constructor parameters. If a matching
	// property with a backing field is needed, it must be explicitly defined.
	public ClassWithProperties(int number, String txt, double flt) {
		this.txt = txt;
		this.flt = flt;
		num = number + 1000;
	}

	// Explicit getter for the read-only txt property
	public final String getTxt() {
		return txt;
	}

	// Explicit getter for the read-write flt property
	public final double getFlt() {
		return flt;
	}

	// Explicit setter for the read-write flt property
	public final void setFlt(double flt) {
		this.flt = flt;
	}

	// Explicit getter for the read-only num property
	public final int getNum() {
		return num;
	}

	public final void mcwp() {
		System.out.println("num: " + num + " ; txt: " + txt + " ; flt: " + flt);
	}
}
