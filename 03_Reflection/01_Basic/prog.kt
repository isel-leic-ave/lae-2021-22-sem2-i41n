package pt.isel.leic.lae

import kotlin.reflect.KClass

class ClassWithProperties(number: Int, val txt: String, var flt: Double) {

	val num = number + 1000
	
	fun mcwp() {
		println("num: ${num} ; txt: ${txt} ; flt: ${flt}")
	}
}

fun inspect(obj : Any) {
	val kls = obj::class

	println(kls.simpleName)
	println(kls.qualifiedName)
	
	println("[")
	kls.members.forEach {
		mbr -> println("   " + mbr)
		if (mbr.name == "mcwp") {
			mbr.call(obj)
		}
	}
	println("]")
}

fun main() {

	val kls : KClass<ClassWithProperties> =
		ClassWithProperties::class

	println(kls.simpleName)
	println(kls.qualifiedName)

	val cwp = ClassWithProperties(123, "ISEL", 3.141592654)
	
	inspect(cwp)
}
