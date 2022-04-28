
open class A(num : Int) {
	protected val number = num + 1000
	open fun m1() { println("A::m1 (number: ${number})") } 
	open fun m2() { println("A::m2 (number: ${number})") } 
	open fun show() {
		println("-----")
		println("number: ${number}")
	}
}

class B(private val str : String = "") : A(55) {
	override fun m2() { println("B::m2 (number: ${number})") } 
	fun m3() { println("B::m3 (number: ${number})") } 
	override fun show() {
		super.show()
		println("str: ${str}")
	}
}

fun showMsg() {
	println("Hello, world!")
}

fun call_m2(obj : A) {
	obj.m2()
}

fun call_show(obj : A) {
	obj.show()
}

fun main() {
	showMsg()
	
	val obj1 : A = A(33)
	val obj2 : A = B("LAE/LEIC41N")
	
	obj1.m1()
	obj2.m1()
	(obj2 as B).m3()

	call_m2(obj1)
	call_m2(obj2)
	
	call_show(obj1)
	call_show(obj2)
}
