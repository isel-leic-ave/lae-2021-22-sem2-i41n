Compiled from "box.kt"
public final class IntHolder implements ValueHolder {
  private int num;

  public IntHolder(int);
    Code:
       0: aload_0
       1: invokespecial #11                 // Method java/lang/Object."<init>":()V
       4: aload_0
       5: iload_1
       6: putfield      #15                 // Field num:I
       9: return

  public java.lang.Object getValue();
    Code:
       0: aload_0
       1: getfield      #15                 // Field num:I
       4: invokestatic  #26                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
       7: areturn

  public void setValue(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #22                 // class java/lang/Integer
       5: dup
       6: ifnonnull     14
       9: pop
      10: iconst_0
      11: goto          17
      14: invokevirtual #32                 // Method java/lang/Integer.intValue:()I
      17: putfield      #15                 // Field num:I
      20: return
}
