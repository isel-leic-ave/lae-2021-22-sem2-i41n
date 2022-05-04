Compiled from "erasure.kt"
public final class StringHolder implements ValueHolder<java.lang.String> {
  private java.lang.String str;

  public StringHolder(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #12                 // String str
       3: invokestatic  #18                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: invokespecial #21                 // Method java/lang/Object."<init>":()V
      10: aload_0
      11: aload_1
      12: putfield      #24                 // Field str:Ljava/lang/String;
      15: return

  public java.lang.String getValue();
    Code:
       0: aload_0
       1: getfield      #24                 // Field str:Ljava/lang/String;
       4: areturn

  public void setValue(java.lang.String);
    Code:
       0: aload_1
       1: ldc           #31                 // String sval
       3: invokestatic  #18                 // Method kotlin/jvm/internal/Intrinsics.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V
       6: aload_0
       7: aload_1
       8: putfield      #24                 // Field str:Ljava/lang/String;
      11: return

  public java.lang.Object getValue();
    Code:
       0: aload_0
       1: invokevirtual #34                 // Method getValue:()Ljava/lang/String;
       4: areturn

  public void setValue(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #37                 // class java/lang/String
       5: invokevirtual #39                 // Method setValue:(Ljava/lang/String;)V
       8: return
}
