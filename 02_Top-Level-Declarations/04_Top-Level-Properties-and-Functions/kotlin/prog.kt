class SomeClass(val num : Int) {
	fun msc() { println("SomeClass(${num})") }
}

// A top-level property, outside of all classes and objects
var x = 1234

// A top-level function, outside of all classes and objects
fun func(y : Int) = x + y

// An extension function. Although physically similar to a top-level
// function, it's meant to be used as if it were another member function
// of the extended class (SomeClass). In this example, 'num' is a member
// property of SomeClass.
fun SomeClass.xmsc(nnn : Int) { println("SomeClass(${num + nnn})") }

fun main() {

	x += 16
	
	println("calc: " + func(50))

	val sc = SomeClass(55)
	
	sc.msc()
	sc.xmsc(33)  // called as a member function of SomeClass
}
