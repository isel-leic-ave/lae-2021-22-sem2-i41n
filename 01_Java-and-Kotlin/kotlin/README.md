Compilar com:
```
   kotlinc prog.kt abc.kt
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   javap A.class
   javap B.class
   javap C.class
   javap D.class
   javap ProgKt.class
   javap -c ProgKt.class
```

Executar:
```
   kotlin -cp . Prog
```
ou
```
   java -cp . Prog
```

Questões desafio:
1. Em Java, o método `main` recebe **sempre** um array de _strings_ como argumento. Em Kotlin, a função `main` pode não ter argumentos. Observando o resultado de `javap -c ProgKt.class`, como resolve o Kotlin essa diferença?
2. Em Java, cada classe de topo pode ter visibilidade `package` (_default_) ou `public`. Em Kotlin, as classes de topo podem ser `public` (_default_), `internal` ou `private`. Utilize `javap` sobre os ficheiros `.class` resultantes da compilação dos ficheiros `.kt` para ver como são mapeadas as visibilidades Kotlin para a JVM. Se criar uma classe `D`, com visibilidade `private` no ficheiro `abc.kt`, consegue antever a anomalia que se observará durante a compilação? Elabore uma resposta mais completa ao problema descrito em: https://stackoverflow.com/questions/35409242/cant-create-private-classes-with-same-name-in-different-modules
