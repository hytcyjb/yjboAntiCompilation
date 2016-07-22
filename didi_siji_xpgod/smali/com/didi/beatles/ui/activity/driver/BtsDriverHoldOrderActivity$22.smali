.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->sendPassenger(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderDriver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2015
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onError(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2047
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->errno:I

    packed-switch v0, :pswitch_data_0

    .line 2065
    :pswitch_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 2068
    :goto_0
    return-void

    .line 2054
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 2055
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 2056
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    .line 2057
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->orderCancelDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->orderCancelDesc:Ljava/lang/String;

    .line 2058
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2059
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showComfirmDialog(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    goto :goto_0

    .line 2047
    :pswitch_data_0
    .packed-switch 0x5209
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2015
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2071
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 2072
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2015
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 2075
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 2076
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2015
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2017
    if-eqz p1, :cond_2

    .line 2018
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2019
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2020
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 2021
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 2022
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    .line 2023
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    .line 2024
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$802(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2025
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    .line 2026
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-boolean v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_call:Z

    iput-boolean v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_call:Z

    .line 2027
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-boolean v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_im:Z

    iput-boolean v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_im:Z

    .line 2028
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    .line 2029
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    .line 2031
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-boolean v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->isFree:Z

    iput-boolean v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->isFree:Z

    .line 2033
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2044
    :goto_0
    return-void

    .line 2035
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->isAlertMsgShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showComfirmDialog(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    goto :goto_0

    .line 2038
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    goto :goto_0

    .line 2042
    :cond_2
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    goto :goto_0
.end method
