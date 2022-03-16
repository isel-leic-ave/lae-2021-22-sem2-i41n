// number, txt, and flt are constructor parameters
// txt and flt are also class properties (note val and var)
class ClassWithProperties(number: Int, val txt: String, var flt: Double) {

	// num is a class property (number is available during initialization)
	val num = number + 1000
	
	fun mcwp() { println("num: ${num} ; txt: ${txt} ; flt: ${flt}") }
}

fun main() {
	val cwp = ClassWithProperties(8, "ISEL", 3.141592654)

	cwp.mcwp()
}
