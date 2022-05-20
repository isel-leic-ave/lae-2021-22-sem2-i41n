
val seq = sequence {
	println(":: ISEL ::")
	yield("ISEL")
	println(":: LEIC ::")
	yield("LEIC")
	println(":: LAE ::")
	yield("LAE")
	println(":: LEIC41N ::")
	yield("LEIC41N")
	println(":: 2022 ::")
	yield("2022")
}

fun main() {
	println(seq.take(3).toList())
}
