.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarOrderState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarOrderState;)V
    .locals 5
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 841
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget v4, p1, Lcom/didi/car/model/CarOrderState;->switchOpen:I

    if-eq v4, v2, :cond_1

    :goto_0
    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v3, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2802(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)Z

    .line 842
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2800(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    :cond_0
    :goto_1
    return-void

    .line 841
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 845
    :cond_2
    iget v2, p1, Lcom/didi/car/model/CarOrderState;->status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getPushCarNum()I

    move-result v1

    .line 847
    .local v1, pushCarNums:I
    if-gtz v1, :cond_0

    .line 850
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->onQueryOrderDetail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3000(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 837
    check-cast p1, Lcom/didi/car/model/CarOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$18;->onSuccess(Lcom/didi/car/model/CarOrderState;)V

    return-void
.end method
