Compiled from "members.kt"
public final class MembersDemo {
  private final java.lang.String msg;

  public MembersDemo(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #9                  // String msg
       3: invokestatic  #15                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: invokespecial #18                 // Method java/lang/Object."<init>":()V
      10: aload_0
      11: aload_1
      12: putfield      #21                 // Field msg:Ljava/lang/String;
      15: return

  public final java.lang.String getMsg();
    Code:
       0: aload_0
       1: getfield      #21                 // Field msg:Ljava/lang/String;
       4: areturn

  public final void showMsg();
    Code:
       0: getstatic     #32                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: aload_0
       4: getfield      #21                 // Field msg:Ljava/lang/String;
       7: invokevirtual #38                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      10: return
}
