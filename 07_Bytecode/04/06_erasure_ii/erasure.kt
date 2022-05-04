import java.text.SimpleDateFormat
import java.util.Date

interface Converter<in From, out To> {
	fun convert(from: From) : To
}

class StringToDateConverter : Converter<String, Date> {
	private val format = SimpleDateFormat("yyyy-mm-dd")
	
	fun strToDate(from: String) : Date {
		return format.parse(from)
	}

	override fun convert(from: String) : Date {
		return format.parse(from)
	}
}

class StringToIntConverter : Converter<String, Int> {
	
	fun strToInt(from: String) : Int {
		return Integer.parseInt(from)
	}

	override fun convert(from: String) : Int {
		return Integer.parseInt(from)
	}
}

fun main() {
	val strToDateConv : Converter<String, Date> =
		StringToDateConverter()
	val strToIntConv : Converter<String, Int> =
		StringToIntConverter()
	
	val date : Date = strToDateConv.convert("2022-04-28")
	val num : Int = strToIntConv.convert("2022")
	
	println(date)
	println(num)
}
