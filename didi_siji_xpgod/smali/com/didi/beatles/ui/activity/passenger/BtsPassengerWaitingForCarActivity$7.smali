.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loopingOrderInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 575
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    const/4 v1, 0x0

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->fillUI(Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V

    .line 584
    const-string v0, "0"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->updateItemStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 591
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
