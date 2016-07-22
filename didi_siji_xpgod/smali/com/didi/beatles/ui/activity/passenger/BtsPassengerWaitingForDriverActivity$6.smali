.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForDriverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
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
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 792
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->onError(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 834
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 835
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 838
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

    .line 839
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v1

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 840
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 792
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->onFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 844
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 845
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

    .line 846
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v1

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 847
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 792
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 851
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 852
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

    .line 853
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 854
    return-void
.end method

.method public onPre()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-super {p0}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 797
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 801
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z
    invoke-static {v0, v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1802(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Z)Z

    .line 803
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 792
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->onSuccess(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 7
    .parameter "t"

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 809
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->serial:J

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v5}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v5

    iget-wide v5, v5, Lcom/didi/beatles/model/order/BtsOrderPassenger;->serial:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 830
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    invoke-static {v3, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 812
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 813
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2002(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    .line 815
    .local v2, price:Lcom/didi/beatles/model/order/BtsPrice;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 816
    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;

    .line 817
    .local v0, dp:Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;
    iget v3, v0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 818
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2102(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 822
    .end local v0           #dp:Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 823
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshViewStatus()V
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    .line 824
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->creatSession(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    invoke-static {v3, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 825
    new-instance v3, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v3}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v4, "BTS_ORDER_EVENT"

    invoke-static {v3, v4}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 828
    :cond_4
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;->onFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    goto/16 :goto_0
.end method
