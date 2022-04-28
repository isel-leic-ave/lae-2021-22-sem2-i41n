fun sum(a: Int, b: Int) : Int {
	return a + b
}

fun sum(a: String, b: String) : String {
	return a + b
}

fun main() {
	val v1 = sum(3, 4)
	val v2 = sum("3", "4")
	
	println(v1)
	println(v2)
}
