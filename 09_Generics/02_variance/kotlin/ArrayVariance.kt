import kotlin.reflect.*
import kotlin.reflect.full.*

open class A
open class B : A()
open class C : B()

/*
fun processAs(aas: Array<A>): Int {
    var count = 0
    for (i in aas.indices) {
        count += 1
    }
    return count
}
*/
/*
fun <T : A> processAs(aas: Array<T>): Int {
    var count = 0
    for (i in aas.indices) {
        count += 1
        aas[i] = A()
    }
    return count
}
*/

inline fun <reified T : A> processAs(aas: Array<T>): Int {
    var count = 0
    for (i in aas.indices) {
        count += 1
        aas[i] = T::class.createInstance()
    }
    return count
}

fun processCs(acs: Array<C>): Int {
    var count = 0
    for (i in acs.indices) {
        count += 1
    }
    return count
}

fun main() {
    val bs = arrayOf(B(), B(), B(), C())
    println(bs[3]::class)

    val na = processAs(bs)
    //val nc = processCs(bs)

    println(na)
    //println(nc)
		
    println(bs[3]::class)
}

