Compiled from "box.kt"
public final class BoxKt {
  public static final void main();
    Code:
       0: new           #8                  // class StringHolder
       3: dup
       4: ldc           #10                 // String LAE
       6: invokespecial #14                 // Method StringHolder."<init>":(Ljava/lang/String;)V
       9: checkcast     #16                 // class ValueHolder
      12: astore_0
      13: getstatic     #22                 // Field java/lang/System.out:Ljava/io/PrintStream;
      16: aload_0
      17: invokeinterface #26,  1           // InterfaceMethod ValueHolder.getValue:()Ljava/lang/Object;
      22: invokevirtual #32                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      25: aload_0
      26: ldc           #34                 // String LEIC41N
      28: invokeinterface #37,  2           // InterfaceMethod ValueHolder.setValue:(Ljava/lang/Object;)V
      33: getstatic     #22                 // Field java/lang/System.out:Ljava/io/PrintStream;
      36: aload_0
      37: invokeinterface #26,  1           // InterfaceMethod ValueHolder.getValue:()Ljava/lang/Object;
      42: invokevirtual #32                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      45: getstatic     #22                 // Field java/lang/System.out:Ljava/io/PrintStream;
      48: ldc           #39                 // String -----
      50: invokevirtual #32                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      53: new           #41                 // class IntHolder
      56: dup
      57: bipush        41
      59: invokespecial #44                 // Method IntHolder."<init>":(I)V
      62: checkcast     #16                 // class ValueHolder
      65: astore_1
      66: getstatic     #22                 // Field java/lang/System.out:Ljava/io/PrintStream;
      69: aload_1
      70: invokeinterface #26,  1           // InterfaceMethod ValueHolder.getValue:()Ljava/lang/Object;
      75: invokevirtual #32                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      78: aload_1
      79: bipush        100
      81: invokestatic  #50                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      84: invokeinterface #37,  2           // InterfaceMethod ValueHolder.setValue:(Ljava/lang/Object;)V
      89: getstatic     #22                 // Field java/lang/System.out:Ljava/io/PrintStream;
      92: aload_1
      93: invokeinterface #26,  1           // InterfaceMethod ValueHolder.getValue:()Ljava/lang/Object;
      98: invokevirtual #32                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
     101: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #56                 // Method main:()V
       3: return
}
