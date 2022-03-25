val logger = Logger()

data class Item(val num : Int, var name : String)

fun main() {
	logger.log(null)
	logger.log("ALPHA")
	logger.log(Item(1234, "ISEL"))
	logger.log(Item(2345, "LEIC"))
	logger.log(Item(3456, "LAE"))
	logger.log(Item(4567, "LEIC43D"))
	logger.log(java.util.HashMap<Int,String>())
}
