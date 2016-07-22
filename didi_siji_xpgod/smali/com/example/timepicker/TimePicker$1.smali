.class Lcom/example/timepicker/TimePicker$1;
.super Landroid/os/Handler;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/timepicker/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lcom/example/timepicker/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/example/timepicker/TimePicker$1;->this$0:Lcom/example/timepicker/TimePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/example/timepicker/TimePicker$1;->this$0:Lcom/example/timepicker/TimePicker;

    #getter for: Lcom/example/timepicker/TimePicker;->mTimePickerListener:Lcom/example/timepicker/TimePicker$TimePickerListener;
    invoke-static {v0}, Lcom/example/timepicker/TimePicker;->access$000(Lcom/example/timepicker/TimePicker;)Lcom/example/timepicker/TimePicker$TimePickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/example/timepicker/TimePicker$1;->this$0:Lcom/example/timepicker/TimePicker;

    #getter for: Lcom/example/timepicker/TimePicker;->mTimePickerListener:Lcom/example/timepicker/TimePicker$TimePickerListener;
    invoke-static {v0}, Lcom/example/timepicker/TimePicker;->access$000(Lcom/example/timepicker/TimePicker;)Lcom/example/timepicker/TimePicker$TimePickerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/example/timepicker/TimePicker$1;->this$0:Lcom/example/timepicker/TimePicker;

    invoke-virtual {v1}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/example/timepicker/TimePicker$TimePickerListener;->onPick(Lcom/didi/common/base/DateTime;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
