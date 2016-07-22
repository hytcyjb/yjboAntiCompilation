.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerOrderDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->loadOrderInfo(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "t"

    .prologue
    const/16 v1, 0x8

    .line 98
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->finish()V

    .line 118
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_1
.end method
