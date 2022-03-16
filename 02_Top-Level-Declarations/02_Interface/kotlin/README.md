Compilar com:
```
   kotlinc prog.kt
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   // Apenas estrutura dos tipos
   javap AnInterface.class
   javap ClassWithInterface.class
   javap ProgKt.class

   // Ver estrutura e código
   javap -c AnInterface.class
   javap -c ClassWithInterface.class
   javap -c ProgKt.class
```

Executar:
```
   kotlin ProgKt
```
