import java.lang.ref.*
import java.io.*

class OutputFile(val fname : String) : Closeable {

	private companion object {
		
		const val tmpdir = "lae-tmp"

		val dir = File(tmpdir)
		
		init {
			dir.mkdir()
		}

		val cleaner = Cleaner.create()
		
		init {
			println(":: Cleaner created ::")
			println(cleaner)
		}
	}

	private class CleanableState(val writer : PrintWriter) : Runnable {
		override fun run() {
			println("cleaning")
			writer.close()
		}
	}

	private val file = File(dir, "output.txt")
	private val state = CleanableState(file.printWriter())
	private val cleanup = cleaner.register(this, state)

	fun writeln(txt : String) { state.writer.println(txt) }
	fun write(txt : String)   { state.writer.print(txt)   }
	
	override fun close() {
		cleanup.clean()
	}
}

fun demo() {
	/*
	OutputFile("output.txt").use { output ->
		output.writeln("ISEL")
		output.writeln("LEIC")
		output.write("LAE")
	}
	*/
	
	val output = OutputFile("output.txt")
	output.writeln("ISEL")
	output.writeln("LEIC")
	output.writeln("LAE")
	
}

fun main() {

	demo()
	
	println(":: done ::")
	Thread.sleep(8000)
	
	System.gc()
	
	println(":: GC ::")
	Thread.sleep(8000)
}
