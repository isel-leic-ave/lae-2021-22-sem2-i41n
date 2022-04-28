Compiled from "invokes.kt"
public final class B extends A {
  private final java.lang.String str;

  public B(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #9                  // String str
       3: invokestatic  #15                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: bipush        55
       9: invokespecial #18                 // Method A."<init>":(I)V
      12: aload_0
      13: aload_1
      14: putfield      #21                 // Field str:Ljava/lang/String;
      17: return

  public B(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
    Code:
       0: iload_2
       1: iconst_1
       2: iand
       3: ifeq          9
       6: ldc           #26                 // String
       8: astore_1
       9: aload_0
      10: aload_1
      11: invokespecial #28                 // Method "<init>":(Ljava/lang/String;)V
      14: return

  public void m2();
    Code:
       0: getstatic     #36                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: new           #38                 // class java/lang/StringBuilder
       6: dup
       7: invokespecial #40                 // Method java/lang/StringBuilder."<init>":()V
      10: ldc           #42                 // String B::m2 (number:
      12: invokevirtual #46                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      15: aload_0
      16: invokevirtual #50                 // Method getNumber:()I
      19: invokevirtual #53                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
      22: bipush        41
      24: invokevirtual #56                 // Method java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
      27: invokevirtual #60                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      30: invokevirtual #66                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: return

  public final void m3();
    Code:
       0: getstatic     #36                 // Field java/lang/System.out:Ljava/io/PrintStream;
       3: new           #38                 // class java/lang/StringBuilder
       6: dup
       7: invokespecial #40                 // Method java/lang/StringBuilder."<init>":()V
      10: ldc           #69                 // String B::m3 (number:
      12: invokevirtual #46                 // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
      15: aload_0
      16: invokevirtual #50                 // Method getNumber:()I
      19: invokevirtual #53                 // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
      22: bipush        41
      24: invokevirtual #56                 // Method java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
      27: invokevirtual #60                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
      30: invokevirtual #66                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: return

  public void show();
    Code:
       0: aload_0
       1: invokespecial #72                 // Method A.show:()V
       4: getstatic     #36                 // Field java/lang/System.out:Ljava/io/PrintStream;
       7: ldc           #74                 // String str:
       9: aload_0
      10: getfield      #21                 // Field str:Ljava/lang/String;
      13: invokestatic  #78                 // Method kotlin/jvm/internal/Intrinsics.stringPlus:(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
      16: invokevirtual #66                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      19: return

  public B();
    Code:
       0: aload_0
       1: aconst_null
       2: iconst_1
       3: aconst_null
       4: invokespecial #80                 // Method "<init>":(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
       7: return
}
