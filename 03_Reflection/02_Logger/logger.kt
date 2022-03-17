import kotlin.reflect.KVisibility
import kotlin.reflect.full.memberProperties

fun log(obj : Any) {

	val klass = obj.javaClass.kotlin // should be obj::class

	println("${klass.simpleName} {")
	klass.memberProperties.forEach {
		prop ->
			if (prop.visibility == KVisibility.PUBLIC) {
				println("   ${prop.name}: ${prop.get(obj)}")
			}
	}
	println("}")
}

data class Item(val num : Int, var name : String)

fun main() {

	val item = Item(1234, "ISEL")

	log(item)
	log("ALPHA")
	log(java.util.HashMap<Int,String>())
}
