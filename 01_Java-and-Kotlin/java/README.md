Compilar com:
```
   javac Prog.java abc.java
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   javap A.class
   javap -c A.class
   javap Prog.class
```

Executar:
```
   java -cp . Prog
```

Questão desafio:
1. Apagar **todos** os ficheiros `.class`
2. Renomear o ficheiro `abc.java` para `B.java` (a maiúscula é importante)
3. `javac -cp . Prog.java`
4. Porque razão ocorre um erro com uma classe específica e não com as outras?

NOTA: o erro varia conforme o nome dado ao ficheiro `abc.java` e os ficheiros `.class` presentes na directoria no momento da compilação
