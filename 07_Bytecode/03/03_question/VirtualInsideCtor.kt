
open class A {
	protected val aval = 1111

	init {
		//
		// 'show' é um método redefinido em 'B' e 'C'
		//
		// Está a ser invocado durante a construção de 'A', que também
		// ocorre durante a construção de 'B' ou 'C'
		//
		// Questão: que versão de 'show' é efectivamente chamada aqui e
		//          que valores aparecem?
		//
		// NOTAS: 
		//   - se chamar a versão 'A::show', não está a ser respeitada a
		//     redefinição
		//   - se chamar a versão 'B::show' ou 'C::show', as propriedades
		//     de 'B' e 'C' ainda não estão inicializadas
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
