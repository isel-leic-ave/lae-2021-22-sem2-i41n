val logger = Logger()

@NoLog
data class Item(val num : Int, var name : String)

@AltName("Person")
data class User(val name : String, @NoLog val pass : String)

fun main() {
	val user1 = User("user1", "1234")
	val user2 = User("user2", "2345")

	logger.log(Item(3456, "LAE"))
	logger.log(user1)
	logger.log(user2)
}
