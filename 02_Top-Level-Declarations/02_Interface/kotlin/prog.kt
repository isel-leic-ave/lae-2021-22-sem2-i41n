// interfaces are public by default
interface AnInterface {
	fun mi() : Unit
}

// ':' is used both for base class and interfaces
// use 'open' only if you expect to have derived classes (irrelevant
//                  for this example about implementing an interface)
open class ClassWithInterface : AnInterface {

	// use 'open' only if you expect this method to be redefined
	// (also irrelevant for this example)
	open fun mcwi() { println("ClassWithInterface") }

	// 'override' is not optional and it's a language keyword
	override fun mi() { println("Interface Implementation") }
}

fun main() {

	// Example of a declaration without type inference
	val ii : AnInterface = ClassWithInterface()

	ii.mi()

	// Example of an explicit downcast
	val cwi = ii as ClassWithInterface 

	cwi.mcwi()
}
