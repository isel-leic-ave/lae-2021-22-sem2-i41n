import java.util.*;

class A {}
class B extends A {}
class C extends B {}

public class ListVariance {

	private static int processAs(ArrayList<? extends A> aas) {
		int count = 0;
		for (int i = 0; i < aas.size(); ++i) {
			count += 1;
			A a = aas.get(i);
		}
		return count;
	}

	private static int processCs(ArrayList<? super C> acs) {
		int count = 0;
		for (int i = 0; i < acs.size(); ++i) {
			count += 1;
			// C c = acs.get(i); // allowed?
		}
		return count;
	}

	public static void main(String[] args) {
			
		ArrayList<B> bs = new ArrayList<B>() { {
			add(new B()); add(new B()); add(new B());
		} };

		int na = processAs(bs);
		int nc = processCs(bs);
		
		System.out.println(na);
		System.out.println(nc);
	}
}
