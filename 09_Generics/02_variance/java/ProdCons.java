import java.util.function.*;

interface Consumer<T> {
	void digest(T obj);
}

interface Producer<T> {
	T invent();
}

class A {}
class B extends A {}
class C extends B {}

public class ProdCons<I,O> implements Consumer<I>, Producer<O> {
	
	private final Function<? super I, ? extends O> transformer;
	
	private O obj = null;
	
	public ProdCons(Function<? super I, ? extends O> transformer) {
		this.transformer = transformer;
	}
	
	@Override
	public void digest(I iobj) {
		this.obj = transformer.apply(iobj);
	}
	
	@Override
	public O invent() {
		return this.obj;
	}
	
	public static void main(String[] args) {
		
		//final ProdCons<B,B> pc = new ProdCons<B,B>((B b) -> b);
		final ProdCons<B,B> pc =
			new ProdCons<B,B>((A a) -> new C());

		pc.digest(new B());
		
		B value = pc.invent();
		
		System.out.println(value);
	}
}
