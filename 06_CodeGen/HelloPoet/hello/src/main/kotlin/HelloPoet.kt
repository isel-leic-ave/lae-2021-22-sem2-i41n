import com.squareup.javapoet.JavaFile
import com.squareup.javapoet.MethodSpec
import com.squareup.javapoet.TypeSpec
import java.io.File
import java.net.URLClassLoader
import javax.lang.model.element.Modifier
import javax.tools.ToolProvider
import kotlin.reflect.full.staticFunctions

private val compiler = ToolProvider.getSystemJavaCompiler()

private val HELLO_CLASS_NAME = "HelloJavaPoet"
private val HELLO_MESSAGE = "Hello, JavaPoet!"

fun main(args: Array<String>) {

    //////////////////////////////////
    //
    // STEP 1 : Generate source code
    //

    println(":: Generating $HELLO_CLASS_NAME source code")

    val javaCode = generateSourceCode(
        HELLO_CLASS_NAME, HELLO_MESSAGE
    )

    //////////////////////////////////
    //
    // STEP 2 : Save source code to file
    // (if a working dir has been provided)
    //

    if (args.isEmpty()) {
        println(":: DONE\n")
        javaCode.writeTo(System.out)
        return
    }

    println(":: Saving $HELLO_CLASS_NAME.java")

    val workDir = File(args[0])
    val sourceFile = File(workDir, "$HELLO_CLASS_NAME.java")

    saveSourceCode(javaCode, sourceFile)

    //////////////////////////////////
    //
    // STEP 3 : Compile source code
    //

    println(":: Compiling $HELLO_CLASS_NAME.java")

    compiler.run(null, null, null, sourceFile.absolutePath)

    //////////////////////////////////
    //
    // STEP 4 : Load the new class
    //

    println(":: Loading $HELLO_CLASS_NAME.class")

    val classLoader = URLClassLoader.newInstance(arrayOf(workDir.toURI().toURL()))
    val className = javaCode.typeSpec.name

    val klass = classLoader.loadClass(className).kotlin

    //////////////////////////////////
    //
    // STEP 5 : RUN
    //

    println(":: Finding $HELLO_CLASS_NAME.main")

    @Suppress("UNCHECKED_CAST")
    val mainMethod = klass.staticFunctions.first {
        method -> method.name == "main"
    } as (Array<String>) -> Unit

    println(":: RUN\n")

    mainMethod(arrayOf())
}

fun generateSourceCode(className: String, message: String): JavaFile {

    // 01. Generate main method

    val mainCode = MethodSpec.methodBuilder("main")
        .addModifiers(Modifier.PUBLIC, Modifier.STATIC)
        .returns(Void.TYPE)
        .addParameter(Array<String>::class.java, "args")
        .addStatement("\$T.out.println(\$S)", System::class.java, message)
        .build()

    // 02. Generate class with the main method

    val klassCode = TypeSpec.classBuilder(className)
        .addModifiers(Modifier.PUBLIC, Modifier.FINAL)
        .addMethod(mainCode)
        .build()

    // 03. Generate source file

    return JavaFile.builder("", klassCode)
        .build()
}

fun saveSourceCode(javaCode: JavaFile, sourceFile: File) {
    val workDir = sourceFile.parentFile

    println(":: Work dir: ${workDir.absolutePath}")

    if (workDir.mkdirs()) {
        println(":: Created working dir: ${workDir.absolutePath}")
    }

    sourceFile.printWriter().use { out ->
        javaCode.writeTo(out)
    }
}
