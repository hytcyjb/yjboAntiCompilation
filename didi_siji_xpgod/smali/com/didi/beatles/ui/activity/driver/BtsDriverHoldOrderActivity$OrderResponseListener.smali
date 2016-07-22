.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderResponseListener"
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
    .line 2355
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2355
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->onError(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2388
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2389
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 2392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 2394
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2355
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2398
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 2401
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2355
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2405
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2407
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 2408
    return-void
.end method

.method public onPre()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2359
    invoke-super {p0}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 2360
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->loadingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 2364
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z
    invoke-static {v0, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2302(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Z)Z

    .line 2366
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2355
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2370
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2372
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->serial:J

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->serial:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2375
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 2376
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2377
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    iget v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->minutesToGo:I

    sput v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    .line 2378
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2379
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->loadingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2380
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2382
    :cond_2
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;->onFail(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    goto :goto_0
.end method
