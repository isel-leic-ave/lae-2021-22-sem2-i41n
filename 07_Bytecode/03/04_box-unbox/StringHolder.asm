Compiled from "box.kt"
public final class StringHolder implements ValueHolder {
  private java.lang.String str;

  public StringHolder(java.lang.String);
    Code:
       0: aload_0
       1: invokespecial #12                 // Method java/lang/Object."<init>":()V
       4: aload_0
       5: aload_1
       6: putfield      #16                 // Field str:Ljava/lang/String;
       9: return

  public java.lang.Object getValue();
    Code:
       0: aload_0
       1: getfield      #16                 // Field str:Ljava/lang/String;
       4: areturn

  public void setValue(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #24                 // class java/lang/String
       5: putfield      #16                 // Field str:Ljava/lang/String;
       8: return
}
