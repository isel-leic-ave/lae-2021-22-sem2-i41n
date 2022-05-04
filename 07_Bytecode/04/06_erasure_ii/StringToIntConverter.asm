Compiled from "erasure.kt"
public final class StringToIntConverter implements Converter<java.lang.String, java.lang.Integer> {
  public StringToIntConverter();
    Code:
       0: aload_0
       1: invokespecial #11                 // Method java/lang/Object."<init>":()V
       4: return

  public final int strToInt(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #18                 // String from
       3: invokestatic  #24                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_1
       7: invokestatic  #29                 // Method java/lang/Integer.parseInt:(Ljava/lang/String;)I
      10: ireturn

  public java.lang.Integer convert(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #18                 // String from
       3: invokestatic  #24                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_1
       7: invokestatic  #29                 // Method java/lang/Integer.parseInt:(Ljava/lang/String;)I
      10: invokestatic  #36                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      13: areturn

  public java.lang.Object convert(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #39                 // class java/lang/String
       5: invokevirtual #41                 // Method convert:(Ljava/lang/String;)Ljava/lang/Integer;
       8: areturn
}
