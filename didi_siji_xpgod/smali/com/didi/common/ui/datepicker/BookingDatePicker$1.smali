.class Lcom/didi/common/ui/datepicker/BookingDatePicker$1;
.super Ljava/lang/Object;
.source "BookingDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/datepicker/BookingDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/datepicker/BookingDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    #calls: Lcom/didi/common/ui/datepicker/BookingDatePicker;->isTimeAvailable()Z
    invoke-static {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$000(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 86
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    invoke-virtual {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$102(Lcom/didi/common/ui/datepicker/BookingDatePicker;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 88
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    #getter for: Lcom/didi/common/ui/datepicker/BookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$200(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    #getter for: Lcom/didi/common/ui/datepicker/BookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$200(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    #calls: Lcom/didi/common/ui/datepicker/BookingDatePicker;->getBookingDate()Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$300(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    #getter for: Lcom/didi/common/ui/datepicker/BookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->access$200(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;->this$0:Lcom/didi/common/ui/datepicker/BookingDatePicker;

    invoke-virtual {v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->dismiss()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f08010c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
