open class A
open class B : A()
open class C : B()

fun <T> use(unused : T) : T = unused

fun processAs(aas: MutableList<out A>): Int {
    var count = 0
    for (i in aas.indices) {
        count += 1
        val a: A = aas.get(i)
        use(a)
        //aas[i] = A()   // allowed?
    }
    return count
}

fun processCs(acs: MutableList<in C>): Int {
    var count = 0
    for (i in acs.indices) {
        count += 1
        acs[i] = C()
        //val c : C = acs.get(i); // allowed?
    }
    return count
}

fun main() {
    val bs = mutableListOf( B(), B(), B() )

    val na = processAs(bs)
    val nc = processCs(bs)

    println(na)
    println(nc)
}
