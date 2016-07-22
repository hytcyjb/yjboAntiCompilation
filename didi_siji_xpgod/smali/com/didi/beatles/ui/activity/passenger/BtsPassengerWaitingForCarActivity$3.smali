.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadOrderInfo(Ljava/lang/String;)V
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
    .line 414
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 414
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "t"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    iput-object p1, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 425
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    const/4 v1, 0x1

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->fillUI(Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V

    .line 426
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loopingOrderInfo()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    .line 427
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadDriverNumSeq()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    .line 428
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateDriverNum()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Z)Z

    .line 431
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
