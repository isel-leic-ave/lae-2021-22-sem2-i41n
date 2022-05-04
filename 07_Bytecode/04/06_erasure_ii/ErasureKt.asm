Compiled from "erasure.kt"
public final class ErasureKt {
  public static final void main();
    Code:
       0: new           #8                  // class StringToDateConverter
       3: dup
       4: invokespecial #11                 // Method StringToDateConverter."<init>":()V
       7: checkcast     #13                 // class Converter
      10: astore_0
      11: new           #15                 // class StringToIntConverter
      14: dup
      15: invokespecial #16                 // Method StringToIntConverter."<init>":()V
      18: checkcast     #13                 // class Converter
      21: astore_1
      22: aload_0
      23: ldc           #18                 // String 2022-04-28
      25: invokeinterface #22,  2           // InterfaceMethod Converter.convert:(Ljava/lang/Object;)Ljava/lang/Object;
      30: checkcast     #24                 // class java/util/Date
      33: astore_2
      34: aload_1
      35: ldc           #26                 // String 2022
      37: invokeinterface #22,  2           // InterfaceMethod Converter.convert:(Ljava/lang/Object;)Ljava/lang/Object;
      42: checkcast     #28                 // class java/lang/Number
      45: invokevirtual #32                 // Method java/lang/Number.intValue:()I
      48: istore_3
      49: getstatic     #38                 // Field java/lang/System.out:Ljava/io/PrintStream;
      52: aload_2
      53: invokevirtual #44                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      56: getstatic     #38                 // Field java/lang/System.out:Ljava/io/PrintStream;
      59: iload_3
      60: invokevirtual #47                 // Method java/io/PrintStream.println:(I)V
      63: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #57                 // Method main:()V
       3: return
}
