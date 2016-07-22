.class Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;
.super Ljava/lang/Object;
.source "BtsBookingDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsBookingDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    #calls: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->isTimeAvailable()Z
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$000(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const v0, 0x7f0b00b5

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 84
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$102(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 86
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$200(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$200(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    #calls: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->getBookingDate()Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$300(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->mMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->access$200(Lcom/didi/beatles/ui/component/BtsBookingDatePicker;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsBookingDatePicker$1;->this$0:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->dismiss()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f08010c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
