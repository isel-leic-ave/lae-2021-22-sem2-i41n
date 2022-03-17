Compilar com:
```
   kotlinc prog.kt
```

Analisar:
```
   javap -p ClassWithCompanion.class
   javap -p ClassWithCompanion$Companion.class
```

Executar:
```
   kotlin ProgKt
```

Questões desafio:
1. Criar uma versão similar em código Java, em que os membros
   do companion object sejam diretamente traduzidos para campos
	 estáticos, sem que exista um tipo próprio e uma instância 
	 para representar o companion object.
2. Usar o _bytecode viewer_ para analisar a implementação gerada
   pelo compilador de Kotlin e produzir uma outra versão em Java
	 baseada no que se observou nessa análise. Neste caso, existirá
	 um tipo próprio para representar o companion object, do qual
	 existirá exactamente uma instância.
