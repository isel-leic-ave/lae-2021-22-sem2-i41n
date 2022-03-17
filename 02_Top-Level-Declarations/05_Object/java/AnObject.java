public final class AnObject {
	// Disallow creating instances of AnObject from outside this type
	private AnObject() {}
	
	// Create and publish the single instance
	public static final AnObject INSTANCE = new AnObject();
	
	// Backing field for the value property (note 'static')
	private static int value = 0;
	
	// Getter for the value property
	public final int getValue() { return value; }

	// Setter for the value property
	public final void setValue(int value) { AnObject.value = value; }
	
	public final void mao() {
		System.out.println("AnObject(value: " + value + ")");
	}
}
