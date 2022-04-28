Compiled from "members.kt"
public final class MembersKt {
  private static final java.lang.String msg;

  public static final java.lang.String getMsg();
    Code:
       0: getstatic     #11                 // Field msg:Ljava/lang/String;
       3: areturn

  public static final void showMsg();
    Code:
       0: getstatic     #19                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: getstatic     #11                 // Field msg:Ljava/lang/String;
       6: invokevirtual #25                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
       9: return

  public static final void main();
    Code:
       0: invokestatic  #28                 // Method showMsg:()V
       3: new           #30                 // class MembersDemo
       6: dup
       7: ldc           #32                 // String Hello,LAE!
       9: invokespecial #36                 // Method MembersDemo."<init>":(Ljava/lang/String;)V
      12: astore_0
      13: new           #30                 // class MembersDemo
      16: dup
      17: ldc           #38                 // String Hello, LEIC41N!
      19: invokespecial #36                 // Method MembersDemo."<init>":(Ljava/lang/String;)V
      22: astore_1
      23: aload_0
      24: invokevirtual #39                 // Method MembersDemo.showMsg:()V
      27: aload_1
      28: invokevirtual #39                 // Method MembersDemo.showMsg:()V
      31: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #45                 // Method main:()V
       3: return

  static {};
    Code:
       0: ldc           #50                 // String Hello, world!
       2: putstatic     #11                 // Field msg:Ljava/lang/String;
       5: return
}
