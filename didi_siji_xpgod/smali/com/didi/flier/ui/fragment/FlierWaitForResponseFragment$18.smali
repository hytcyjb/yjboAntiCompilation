.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarOrderState;)V
    .locals 5
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 842
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget v4, p1, Lcom/didi/car/model/CarOrderState;->switchOpen:I

    if-eq v4, v2, :cond_1

    :goto_0
    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v3, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2802(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z

    .line 843
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    :cond_0
    :goto_1
    return-void

    .line 842
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 846
    :cond_2
    iget v2, p1, Lcom/didi/car/model/CarOrderState;->status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getPushCarNum()I

    move-result v1

    .line 848
    .local v1, pushCarNums:I
    if-gtz v1, :cond_0

    .line 851
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onQueryOrderDetail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3000(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 838
    check-cast p1, Lcom/didi/car/model/CarOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;->onSuccess(Lcom/didi/car/model/CarOrderState;)V

    return-void
.end method
