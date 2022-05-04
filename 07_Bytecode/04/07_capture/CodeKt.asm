Compiled from "code.kt"
public final class CodeKt {
  public static final Messenger createMessenger(java.lang.String);
    Code:
       0: aload_0
       1: ldc           #9                  // String msg
       3: invokestatic  #15                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: new           #17                 // class CodeKt$createMessenger$theMessenger$1
       9: dup
      10: aload_0
      11: invokespecial #21                 // Method CodeKt$createMessenger$theMessenger$1."<init>":(Ljava/lang/String;)V
      14: astore_1
      15: getstatic     #27                 // Field java/lang/System.out:Ljava/io/PrintStream;
      18: new           #29                 // class java/lang/StringBuilder
      21: dup
      22: invokespecial #32                 // Method java/lang/StringBuilder."<init>":()V
      25: ldc           #34                 // String >> argument msg (\"
      27: invokevirtual #38                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      30: aload_0
      31: invokevirtual #38                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      34: ldc           #40                 // String \") will be invalid in a few ns
      36: invokevirtual #38                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      39: invokevirtual #44                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      42: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      45: aload_1
      46: checkcast     #52                 // class Messenger
      49: areturn

  public static final void main();
    Code:
       0: ldc           #58                 // String Hello, LAE!
       2: invokestatic  #60                 // Method createMessenger:(Ljava/lang/String;)LMessenger;
       5: astore_0
       6: ldc           #62                 // String Hello, LEIC43D!
       8: invokestatic  #60                 // Method createMessenger:(Ljava/lang/String;)LMessenger;
      11: astore_1
      12: aload_0
      13: invokeinterface #65,  1           // InterfaceMethod Messenger.getMessage:()Ljava/lang/String;
      18: astore_2
      19: aload_1
      20: invokeinterface #65,  1           // InterfaceMethod Messenger.getMessage:()Ljava/lang/String;
      25: astore_3
      26: getstatic     #27                 // Field java/lang/System.out:Ljava/io/PrintStream;
      29: aload_2
      30: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: getstatic     #27                 // Field java/lang/System.out:Ljava/io/PrintStream;
      36: aload_3
      37: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      40: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #73                 // Method main:()V
       3: return
}
