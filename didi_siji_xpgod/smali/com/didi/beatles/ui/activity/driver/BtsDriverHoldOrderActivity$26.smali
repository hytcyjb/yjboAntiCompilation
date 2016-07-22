.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;",
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
    .line 2187
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->onError(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2217
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2218
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3602(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .line 2219
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e24

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e23

    if-ne v0, v1, :cond_1

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showStrivedDialog(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    .line 2227
    :goto_0
    return-void

    .line 2221
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e26

    if-ne v0, v1, :cond_2

    .line 2222
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsOrderHelper;->showDriverAuthDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 2225
    :cond_2
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2231
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2232
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3602(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .line 2233
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showReStriveConfirm(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    .line 2234
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2238
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2239
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3602(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .line 2240
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 2241
    return-void
.end method

.method public onPre()V
    .locals 4

    .prologue
    .line 2191
    invoke-super {p0}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 2192
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 2193
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2187
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 2197
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2198
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3602(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    .line 2199
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->order_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->setErrorMsg(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->onError(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    .line 2213
    :goto_0
    return-void

    .line 2204
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->session_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/didi/im/db/IMDBDataHelper;->insertDriverAndPassengerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->creatIMDB(Ljava/lang/String;)V

    .line 2206
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mergeStriveResultToOrder(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    .line 2208
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2209
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const/4 v1, 0x1

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mShowAddRoute:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3802(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Z)Z

    .line 2210
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showAddRouteDialog()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2212
    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method
