// 'implements' used with interfaces instead of Kotlin's ':'
// no 'final' allows having derived classes (irrelevant for
//             this example about implementing an interface)
public class ClassWithInterface implements AnInterface {

	// no 'final' allows this method to be redefined
	// (also irrelevant for the example)
	public void mcwi() { 
		System.out.println("ClassWithInterface");
	}

	// 'override' in Java is **optional** and is set as an annotation (@ syntax)
	@Override
	public void mi() {
		System.out.println("Interface Implementation");
	}
}
