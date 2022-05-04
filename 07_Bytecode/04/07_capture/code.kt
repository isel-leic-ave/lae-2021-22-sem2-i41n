interface Messenger {
	fun getMessage() : String
}

fun createMessenger(msg : String) : Messenger {
	val theMessenger = object : Messenger {
		override fun getMessage() : String {
			println(">> using argument msg (\"${msg}\") right now")
			return msg
		}
	}
	println(">> argument msg (\"${msg}\") will be invalid in a few ns")
	return theMessenger
}

fun main() {
	val messenger1 = createMessenger("Hello, LAE!")
	val messenger2 = createMessenger("Hello, LEIC43D!")
	
	val message1 = messenger1.getMessage()
	val message2 = messenger2.getMessage()
	
	println(message1)
	println(message2)
}
