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
	
		@Suppress("UNCHECKED_CAST")
		val propsList =
			klass.memberProperties
			     .filter {
			        prop -> prop.visibility == KVisibility.PUBLIC
							&&
							!prop.hasAnnotation<NoLog>()
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

		if (klass.hasAnnotation<NoLog>()) {
			return
		}

		val propsList = propsMap.computeIfAbsent(
			klass,
			::getPropsList
		)

		val altName = klass.findAnnotation<AltName>()
		/*
		if (altName != null) {
			println("${altName.aka} {")
		} else {
			println("${klass.simpleName} {")
		}
		*/
		val name = altName?.aka ?: klass.simpleName
		println("${name} {")
		
		propsList.forEach { prop->
			println("   ${ prop.name }: ${ prop.get(obj) }")
		}

		println("}")
	}
}
