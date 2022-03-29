import kotlin.reflect.*
import kotlin.reflect.full.*

class Logger {

	private val propsMap :
		MutableMap<KClass<*>, List<KProperty1<Any, Any?>>> =
		mutableMapOf() 

	private fun getPropsList(klass : KClass<*>) :
		List<KProperty1<Any, Any?>>
	{
		println(":: processing ${klass.simpleName} ::")

		val propsList =
			klass.memberProperties
			     .filter {
			        prop -> prop.visibility == KVisibility.PUBLIC
			     }
			     as List<KProperty1<Any, Any?>>

		return propsList
	}

	fun log(obj : Any?) {

		if (obj == null) {
			println("null")
			return
		}

		val klass = obj.javaClass.kotlin  // should be: obj::class

		val propsList = propsMap.computeIfAbsent(
			klass,
			::getPropsList
		)

		println("${klass.simpleName} {")

		propsList.forEach { prop->
			println("   ${ prop.name }: ${ prop.get(obj) }")
		}

		println("}")
	}
}
