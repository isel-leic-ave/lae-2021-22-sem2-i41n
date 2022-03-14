
private class D() {
	fun md() { println("D") }
}

fun A.ma2() { println("A2") }

fun main() {
	val a = A()
	val b = B()
	var c = C()
	var d = D()
	
	a.ma()
	a.ma2()
	b.mb()
	c.mc()
	d.md()
}
