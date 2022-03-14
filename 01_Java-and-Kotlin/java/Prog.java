
class D {
	public void md() { System.out.println("D"); }
}

public class Prog {
	public static void main(String[] args) {
		final A a = new A();
		final B b = new B();
		C c = new C();
		D d = new D();
		
		a.ma();
		b.mb();
		c.mc();
		d.md();
	}
}
