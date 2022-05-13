import kotlin.reflect.*
import kotlin.reflect.full.*

inline fun <reified T : Any> log(obj: T) {
	println("${T::class} : ${obj::class} : ${obj}")
}

fun <T : Any> createObj(k : KClass<T>) : T {
	return k.createInstance()
}

inline fun <reified T : Any> createObj() : T {
	return T::class.createInstance()
}

open class A
open class B : A()

fun main() {
	log("ISEL")
	log(2022)
	
	val a : A = B()
	log(a)

	// --------
	
	val obja = createObj(A::class)
	val objb = createObj(B::class)
	println("> $obja")
	println("> $objb")

	val obja2 = createObj<A>()
	val objb2 : B = createObj()

	println("> $obja2")
	println("> $objb2")
}
