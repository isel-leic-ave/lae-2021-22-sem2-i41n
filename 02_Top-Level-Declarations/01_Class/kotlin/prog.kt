// classes are public (and final/closed) by default
class RegularClass {

	// methods are public (and final/closed) by default
	// return type inferred from implementation
	fun mrc() { println("RegularClass") }

}

// top-level functions are possible
fun main() {

	// val declares a constant
	// type is inferred from the initialization expression
	val rc = RegularClass()
	
	rc.mrc()
}
