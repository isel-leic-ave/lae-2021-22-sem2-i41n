
class MembersDemo(val msg : String) {
	fun showMsg() {
		println(msg)
	}
}

val msg = "Hello, world!"

fun showMsg() {
	println(msg)
}
fun main() {
	showMsg()
	
	val demo1 = MembersDemo("Hello,LAE!")
	val demo2 = MembersDemo("Hello, LEIC41N!")

	demo1.showMsg()
	demo2.showMsg()
}
