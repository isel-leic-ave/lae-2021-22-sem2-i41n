class A {}
class B extends A {}
class C extends B {}

public class ArrayVariance {

	private static int processAs(A[] aas) {
		int count = 0;
		for (int i = 0; i < aas.length; ++i) {
			count += 1;
			aas[i] = new C(); // allowed?
			aas[i] = new A(); // allowed?
		}
		return count;
	}

	private static int processCs(C[] acs) {
		int count = 0;
		for (int i = 0; i < acs.length; ++i) {
			count += 1;
		}
		return count;
	}

	public static void main(String[] args) {
			
		B[] bs = new B[] { new B(), new B(), new B(), new C() };

		int na = processAs(bs);
		//int nc = processCs(bs);
		
		System.out.println(na);
		//System.out.println(nc);
	}
}
