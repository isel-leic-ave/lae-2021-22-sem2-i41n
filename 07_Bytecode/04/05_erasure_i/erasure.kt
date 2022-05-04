interface ValueHolder<T> {
	var value : T
}

class StringHolder(private var str : String)
		: ValueHolder<String> {
	override var value : String
		get() = str
		set(sval) { str = sval }
}

class IntHolder(private var num : Int)
			: ValueHolder<Int> {
	override var value : Int
		get() = num
		set(nval) { num = nval }
}

class Holder<T>(private var data : T) : ValueHolder<T> {
	override var value : T
		get() = data
		set(dval) { data = dval }
}

fun main() {

	//val strHolder : ValueHolder<String> = StringHolder("LAE")
	//val strHolder = StringHolder("LAE")
	val strHolder = Holder<String>("LAE")

	//val intHolder : ValueHolder<Int> = IntHolder(41)
	//val intHolder = IntHolder(41)
	val intHolder = Holder<Int>(41)

	println(strHolder.value)
	println(intHolder.value)
	
	strHolder.value = "LEIC41N"
	intHolder.value = 100
	
	println(strHolder.value)
	println(intHolder.value)
}
