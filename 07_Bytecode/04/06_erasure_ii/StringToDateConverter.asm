Compiled from "erasure.kt"
public final class StringToDateConverter implements Converter<java.lang.String, java.util.Date> {
  private final java.text.SimpleDateFormat format;

  public StringToDateConverter();
    Code:
       0: aload_0
       1: invokespecial #11                 // Method java/lang/Object."<init>":()V
       4: aload_0
       5: new           #13                 // class java/text/SimpleDateFormat
       8: dup
       9: ldc           #15                 // String yyyy-mm-dd
      11: invokespecial #18                 // Method java/text/SimpleDateFormat."<init>":(Ljava/lang/String;)V
      14: putfield      #22                 // Field format:Ljava/text/SimpleDateFormat;
      17: return

  public final java.util.Date strToDate(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #29                 // String from
       3: invokestatic  #35                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: getfield      #22                 // Field format:Ljava/text/SimpleDateFormat;
      10: aload_1
      11: invokevirtual #38                 // Method java/text/SimpleDateFormat.parse:(Ljava/lang/String;)Ljava/util/Date;
      14: astore_2
      15: aload_2
      16: ldc           #40                 // String format.parse(from)
      18: invokestatic  #43                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullExpressionValue:(Ljava/lang/Object;Ljava/lang/String;)V
      21: aload_2
      22: areturn

  public java.util.Date convert(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #29                 // String from
       3: invokestatic  #35                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: getfield      #22                 // Field format:Ljava/text/SimpleDateFormat;
      10: aload_1
      11: invokevirtual #38                 // Method java/text/SimpleDateFormat.parse:(Ljava/lang/String;)Ljava/util/Date;
      14: astore_2
      15: aload_2
      16: ldc           #40                 // String format.parse(from)
      18: invokestatic  #43                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullExpressionValue:(Ljava/lang/Object;Ljava/lang/String;)V
      21: aload_2
      22: areturn

  public java.lang.Object convert(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #48                 // class java/lang/String
       5: invokevirtual #50                 // Method convert:(Ljava/lang/String;)Ljava/util/Date;
       8: areturn
}
