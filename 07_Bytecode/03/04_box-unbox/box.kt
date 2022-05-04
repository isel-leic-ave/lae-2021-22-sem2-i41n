interface ValueHolder {
	var value : Any?
}

class StringHolder(private var str : String?) : ValueHolder {
	override var value : Any?
		get() = str
		set(sval) { str = sval as String? }
}

class IntHolder(private var num : Int) : ValueHolder {
	override var value : Any?
		get() = num
		set(nval) { num = (nval as Int?) ?: 0 }
}

fun main() {

	val strHolder : ValueHolder = StringHolder("LAE")
	
	println(strHolder.value)
	
	strHolder.value = "LEIC41N"
	
	println(strHolder.value)

	println("-----")

	val intHolder : ValueHolder = IntHolder(41)
	
	println(intHolder.value)
	
	intHolder.value = 100
	
	println(intHolder.value)

}
