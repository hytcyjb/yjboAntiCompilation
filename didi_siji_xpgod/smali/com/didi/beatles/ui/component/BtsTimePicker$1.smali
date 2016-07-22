.class Lcom/didi/beatles/ui/component/BtsTimePicker$1;
.super Landroid/os/Handler;
.source "BtsTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

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
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsTimePicker;->mTimePickerListener:Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->access$000(Lcom/didi/beatles/ui/component/BtsTimePicker;)Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsTimePicker;->mTimePickerListener:Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->access$000(Lcom/didi/beatles/ui/component/BtsTimePicker;)Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;->onPick(Lcom/didi/common/base/DateTime;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
