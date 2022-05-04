Compiled from "code.kt"
public final class CodeKt$createMessenger$theMessenger$1 implements Messenger {
  final java.lang.String $msg;

  CodeKt$createMessenger$theMessenger$1(java.lang.String);
    Code:
       0: aload_0
       1: aload_1
       2: putfield      #12                 // Field $msg:Ljava/lang/String;
       5: aload_0
       6: invokespecial #15                 // Method java/lang/Object."<init>":()V
       9: return

  public java.lang.String getMessage();
    Code:
       0: getstatic     #26                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: new           #28                 // class java/lang/StringBuilder
       6: dup
       7: invokespecial #29                 // Method java/lang/StringBuilder."<init>":()V
      10: ldc           #31                 // String >> using argument msg (\"
      12: invokevirtual #35                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      15: aload_0
      16: getfield      #12                 // Field $msg:Ljava/lang/String;
      19: invokevirtual #35                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      22: ldc           #37                 // String \") right now
      24: invokevirtual #35                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      27: invokevirtual #40                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      30: invokevirtual #46                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: aload_0
      34: getfield      #12                 // Field $msg:Ljava/lang/String;
      37: areturn
}
