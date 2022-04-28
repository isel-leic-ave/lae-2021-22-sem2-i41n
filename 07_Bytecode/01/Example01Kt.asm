Compiled from "example01.kt"
public final class Example01Kt {
  public static final int sum(int, int);
    Code:
       0: iload_0
       1: iload_1
       2: iadd
       3: ireturn

  public static final java.lang.String sum(java.lang.String, java.lang.String);
    Code:
       0: aload_0
       1: ldc           #12                 // String a
       3: invokestatic  #18                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_1
       7: ldc           #19                 // String b
       9: invokestatic  #18                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
      12: aload_0
      13: aload_1
      14: invokestatic  #23                 // Method kotlin/jvm/internal/Intrinsics.stringPlus:(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
      17: areturn

  public static final void main();
    Code:
       0: iconst_3
       1: iconst_4
       2: invokestatic  #28                 // Method sum:(II)I
       5: istore_0
       6: ldc           #30                 // String 3
       8: ldc           #32                 // String 4
      10: invokestatic  #34                 // Method sum:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      13: astore_1
      14: getstatic     #40                 // Field java/lang/System.out:Ljava/io/PrintStream;
      17: iload_0
      18: invokevirtual #46                 // Method java/io/PrintStream.println:(I)V
      21: getstatic     #40                 // Field java/lang/System.out:Ljava/io/PrintStream;
      24: aload_1
      25: invokevirtual #49                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      28: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #54                 // Method main:()V
       3: return
}
