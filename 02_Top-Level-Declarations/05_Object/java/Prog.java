public final class Prog {

	public static final void useInterface(AnInterface obj) {
		obj.mi();
	}

	public static final void main() {

		// The single instance of AnObject is accessed via
		// its static field INSTANCE.
		// A property is accessed via its accessors.
		AnObject.INSTANCE.setValue(AnObject.INSTANCE.getValue() + 1);
		AnObject.INSTANCE.mao();
		
		//AnotherObject.INSTANCE.year = 1970;
		//AnotherObject.INSTANCE.maoo();

		//useInterface(AnotherObject.INSTANCE);
	}

	public static void main(String[] args) { main(); }
}
