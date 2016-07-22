.class Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;
.super Ljava/lang/Object;
.source "BtsHourMinuteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 106
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 109
    check-cast v1, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;

    .line 110
    .local v1, cb:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    #getter for: Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mType:I
    invoke-static {v2}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->access$000(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    #getter for: Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;
    invoke-static {v3}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->access$100(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->getCurrentHour()I

    move-result v3

    iget-object v4, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    #getter for: Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;
    invoke-static {v4}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->access$100(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->getCurrentMinute()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;->onResult(III)V

    .line 113
    .end local v1           #cb:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->dismiss()V

    goto :goto_0

    .line 118
    .end local v0           #activity:Landroid/app/Activity;
    :pswitch_1
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->dismiss()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f08010c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
