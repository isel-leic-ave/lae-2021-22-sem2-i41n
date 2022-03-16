Compilar com:
```
   kotlinc prog.kt
```

Observar:
* ficheiros resultantes da compilação

Analisar:
```
   javap -p ClassWithProperties.class
   javap ProgKt.class
```

Executar:
```
   kotlin ProgKt
```

Questão desafio:
- Instalar [Bytecode Viewer](https://github.com/Konloch/bytecode-viewer/releases)
  * Download de `Bytecode-Viewer-<version>.jar`
  * Executar com: `java -jar Bytecode-Viewer-<version>.jar`
- Carregar o ficheiro `ClassWithProperties.class` no _bytecode viewer_ e verificar 
  se o código apresentado pelo descompilador é semelhante ao que está em 
  `ClassWithProperties.java`