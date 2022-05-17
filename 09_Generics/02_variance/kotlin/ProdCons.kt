interface Consumer<in T> {
    fun digest(iobj: T)
}

interface Producer<out T> {
    fun invent(): T
}

open class A
open class B : A()
open class C : B()

class ProdCons<in I : Any, out O : Any>(
		private val transformer: (i : I) -> O
	) : Consumer<I>, Producer<O> {

    private lateinit var obj: O

    override fun digest(iobj: I) {
        obj = transformer(iobj)
    }

    override fun invent(): O {
        return obj
    }

}

fun main() {
    //val pc = ProdCons<B,B> { b : B -> b }
    val pc : ProdCons<C,A> = ProdCons<A,C> { _ : A -> C() }
    pc.digest(C())
    val value : A = pc.invent()
    println(value)
}
