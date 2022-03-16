Compilar com:
```
   kotlinc prog.kt
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   // Apenas estrutura dos tipos
   javap RegularClass.class
   javap ProgKt.class

   // Ver estrutura e código
   javap -c RegularClass.class
   javap -c ProgKt.class
```

Executar:
```
   kotlin ProgKt
```

Questão desafio:
   - Existe uma diferença entre o tipo descrito em ProgKt.class e o tipo equivalente na versão Java. Porquê?
