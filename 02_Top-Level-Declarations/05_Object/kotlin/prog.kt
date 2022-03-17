
// An object declaration describes a type and
// a single instance of that type
object AnObject {
	var value = 0
	
	fun mao() { println("AnObject(value: ${value})") }
}
 
interface AnInterface {
	fun mi() : Unit;
} 

// An object can implement interfaces
object AnotherObject : AnInterface {
	var year = 2022
	
	fun maoo() { println("AnotherObject(year: ${year})") }
	
	override fun mi() { println("Interface in Object") }
}

fun useInterface(obj : AnInterface) { obj.mi() }

fun main() {

	// The name of an object is used to
	// access its single instance.

	AnObject.value++
	AnObject.mao()
	
	AnotherObject.year = 1970
	AnotherObject.maoo()

	useInterface(AnotherObject)
}
