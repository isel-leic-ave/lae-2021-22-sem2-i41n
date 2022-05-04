Compiled from "erasure.kt"
public final class ErasureKt {
  public static final void main();
    Code:
       0: new           #8                  // class Holder
       3: dup
       4: ldc           #10                 // String LAE
       6: invokespecial #14                 // Method Holder."<init>":(Ljava/lang/Object;)V
       9: astore_0
      10: new           #8                  // class Holder
      13: dup
      14: bipush        41
      16: invokestatic  #20                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      19: invokespecial #14                 // Method Holder."<init>":(Ljava/lang/Object;)V
      22: astore_1
      23: getstatic     #26                 // Field java/lang/System.out:Ljava/io/PrintStream;
      26: aload_0
      27: invokevirtual #30                 // Method Holder.getValue:()Ljava/lang/Object;
      30: invokevirtual #35                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      33: getstatic     #26                 // Field java/lang/System.out:Ljava/io/PrintStream;
      36: aload_1
      37: invokevirtual #30                 // Method Holder.getValue:()Ljava/lang/Object;
      40: checkcast     #37                 // class java/lang/Number
      43: invokevirtual #41                 // Method java/lang/Number.intValue:()I
      46: invokevirtual #44                 // Method java/io/PrintStream.println:(I)V
      49: aload_0
      50: ldc           #46                 // String LEIC41N
      52: invokevirtual #49                 // Method Holder.setValue:(Ljava/lang/Object;)V
      55: aload_1
      56: bipush        100
      58: invokestatic  #20                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      61: invokevirtual #49                 // Method Holder.setValue:(Ljava/lang/Object;)V
      64: getstatic     #26                 // Field java/lang/System.out:Ljava/io/PrintStream;
      67: aload_0
      68: invokevirtual #30                 // Method Holder.getValue:()Ljava/lang/Object;
      71: invokevirtual #35                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      74: getstatic     #26                 // Field java/lang/System.out:Ljava/io/PrintStream;
      77: aload_1
      78: invokevirtual #30                 // Method Holder.getValue:()Ljava/lang/Object;
      81: checkcast     #37                 // class java/lang/Number
      84: invokevirtual #41                 // Method java/lang/Number.intValue:()I
      87: invokevirtual #44                 // Method java/io/PrintStream.println:(I)V
      90: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #55                 // Method main:()V
       3: return
}
