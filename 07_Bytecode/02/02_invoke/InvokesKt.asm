Compiled from "invokes.kt"
public final class InvokesKt {
  public static final void showMsg();
    Code:
       0: getstatic     #12                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: ldc           #14                 // String Hello, world!
       5: invokevirtual #20                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
       8: return

  public static final void call_m2(A);
    Code:
       0: aload_0
       1: ldc           #25                 // String obj
       3: invokestatic  #31                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: invokevirtual #36                 // Method A.m2:()V
      10: return

  public static final void call_show(A);
    Code:
       0: aload_0
       1: ldc           #25                 // String obj
       3: invokestatic  #31                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: invokevirtual #41                 // Method A.show:()V
      10: return

  public static final void main();
    Code:
       0: invokestatic  #44                 // Method showMsg:()V
       3: new           #33                 // class A
       6: dup
       7: bipush        33
       9: invokespecial #48                 // Method A."<init>":(I)V
      12: astore_0
      13: new           #50                 // class B
      16: dup
      17: ldc           #52                 // String LAE/LEIC41N
      19: invokespecial #55                 // Method B."<init>":(Ljava/lang/String;)V
      22: checkcast     #33                 // class A
      25: astore_1
      26: aload_0
      27: invokevirtual #58                 // Method A.m1:()V
      30: aload_1
      31: invokevirtual #58                 // Method A.m1:()V
      34: aload_1
      35: checkcast     #50                 // class B
      38: invokevirtual #61                 // Method B.m3:()V
      41: aload_0
      42: invokestatic  #63                 // Method call_m2:(LA;)V
      45: aload_1
      46: invokestatic  #63                 // Method call_m2:(LA;)V
      49: aload_0
      50: invokestatic  #65                 // Method call_show:(LA;)V
      53: aload_1
      54: invokestatic  #65                 // Method call_show:(LA;)V
      57: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #70                 // Method main:()V
       3: return
}
