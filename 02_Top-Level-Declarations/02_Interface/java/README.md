Compilar com:
```
   javac -cp . Prog.java
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   // Apenas estrutura dos tipos
   javap AnInterface.class
   javap ClassWithInterface.class
   javap Prog.class

   // Ver estrutura e código
   javap -c AnInterface.class
   javap -c ClassWithInterface.class
   javap -c Prog.class
```

Executar:
```
   java -cp . Prog
```
