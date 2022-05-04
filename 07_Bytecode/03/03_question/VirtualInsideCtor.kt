
open class A {
	protected val aval = 1111

	init {
		//
		// 'show' � um m�todo redefinido em 'B' e 'C'
		//
		// Est� a ser invocado durante a constru��o de 'A', que tamb�m
		// ocorre durante a constru��o de 'B' ou 'C'
		//
		// Quest�o: que vers�o de 'show' � efectivamente chamada aqui e
		//          que valores aparecem?
		//
		// NOTAS: 
		//   - se chamar a vers�o 'A::show', n�o est� a ser respeitada a
		//     redefini��o
		//   - se chamar a vers�o 'B::show' ou 'C::show', as propriedades
		//     de 'B' e 'C' ainda n�o est�o inicializadas
		//
		show()
	}

	open fun show() {
		println("[A] aval: ${aval}")
	}
}

open class B : A() {
	protected val bval = 2222

	override fun show() {
		println("[B] aval: ${aval} | bval: ${bval} ")
	}
}

open class C : B() {
	protected val cval = 3333

	override fun show() {
		println("[C] aval: ${aval} | bval: ${bval} | cval: ${cval} ")
	}
}

fun main() {
	A()
	B()
	C()
}
