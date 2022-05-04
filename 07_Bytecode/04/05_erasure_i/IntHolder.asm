Compiled from "erasure.kt"
public final class IntHolder implements ValueHolder<java.lang.Integer> {
  private int num;

  public IntHolder(int);
    Code:
       0: aload_0
       1: invokespecial #12                 // Method java/lang/Object."<init>":()V
       4: aload_0
       5: iload_1
       6: putfield      #16                 // Field num:I
       9: return

  public java.lang.Integer getValue();
    Code:
       0: aload_0
       1: getfield      #16                 // Field num:I
       4: invokestatic  #27                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
       7: areturn

  public void setValue(int);
    Code:
       0: aload_0
       1: iload_1
       2: putfield      #16                 // Field num:I
       5: return

  public java.lang.Object getValue();
    Code:
       0: aload_0
       1: invokevirtual #32                 // Method getValue:()Ljava/lang/Integer;
       4: areturn

  public void setValue(java.lang.Object);
    Code:
       0: aload_0
       1: aload_1
       2: checkcast     #35                 // class java/lang/Number
       5: invokevirtual #39                 // Method java/lang/Number.intValue:()I
       8: invokevirtual #41                 // Method setValue:(I)V
      11: return
}
