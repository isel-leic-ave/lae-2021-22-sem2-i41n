Compiled from "erasure.kt"
public final class Holder<T> implements ValueHolder<T> {
  private T data;

  public Holder(T);
    Code:
       0: aload_0
       1: invokespecial #13                 // Method java/lang/Object."<init>":()V
       4: aload_0
       5: aload_1
       6: putfield      #17                 // Field data:Ljava/lang/Object;
       9: return

  public T getValue();
    Code:
       0: aload_0
       1: getfield      #17                 // Field data:Ljava/lang/Object;
       4: areturn

  public void setValue(T);
    Code:
       0: aload_0
       1: aload_1
       2: putfield      #17                 // Field data:Ljava/lang/Object;
       5: return
}
