Compilar com:
```
   javac -cp . Prog.java
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   // Apenas estrutura dos tipos
   javap RegularClass.class
   javap Prog.class

   // Ver estrutura e código
   javap -c RegularClass.class
   javap -c Prog.class
```

Executar:
```
   java -cp . Prog
```

Questão desafio:
   - Existe uma diferença entre o tipo descrito em Prog.class e o tipo equivalente na versão Kotlin.
