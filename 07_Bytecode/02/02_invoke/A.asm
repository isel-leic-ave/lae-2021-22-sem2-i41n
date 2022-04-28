Compiled from "invokes.kt"
public class A {
  private final int number;

  public A(int);
    Code:
       0: aload_0
       1: invokespecial #9                  // Method java/lang/Object."<init>":()V
       4: aload_0
       5: iload_1
       6: sipush        1000
       9: iadd
      10: putfield      #13                 // Field number:I
      13: return

  protected final int getNumber();
    Code:
       0: aload_0
       1: getfield      #13                 // Field number:I
       4: ireturn

  public void m1();
    Code:
       0: getstatic     #25                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: new           #27                 // class java/lang/StringBuilder
       6: dup
       7: invokespecial #28                 // Method java/lang/StringBuilder."<init>":()V
      10: ldc           #30                 // String A::m1 (number:
      12: invokevirtual #34                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      15: aload_0
      16: getfield      #13                 // Field number:I
      19: invokevirtual #37                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
      22: bipush        41
      24: invokevirtual #40                 // Method java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
      27: invokevirtual #44                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      30: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: return

  public void m2();
    Code:
       0: getstatic     #25                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: new           #27                 // class java/lang/StringBuilder
       6: dup
       7: invokespecial #28                 // Method java/lang/StringBuilder."<init>":()V
      10: ldc           #53                 // String A::m2 (number:
      12: invokevirtual #34                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      15: aload_0
      16: getfield      #13                 // Field number:I
      19: invokevirtual #37                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
      22: bipush        41
      24: invokevirtual #40                 // Method java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
      27: invokevirtual #44                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      30: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: return

  public void show();
    Code:
       0: getstatic     #25                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: ldc           #56                 // String -----
       5: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
       8: getstatic     #25                 // Field java/lang/System.out:Ljava/io/PrintStream;
      11: ldc           #58                 // String number:
      13: aload_0
      14: getfield      #13                 // Field number:I
      17: invokestatic  #64                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      20: invokestatic  #70                 // Method kotlin/jvm/internal/Intrinsics.stringPlus:(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
      23: invokevirtual #50                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      26: return
}
