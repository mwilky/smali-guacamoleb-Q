.class Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v5}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v5, p3, p2

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$300(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/16 v0, 0xb

    if-ne p2, v0, :cond_3

    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$400(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v4}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;III)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$600(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$700(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;->access$800(Lcom/oneplus/lib/widget/DatePickerSpinnerDelegate;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
