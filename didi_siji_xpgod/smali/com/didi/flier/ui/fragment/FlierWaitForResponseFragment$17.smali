.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarGetState()V
    .locals 4

    .prologue
    .line 822
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getPushCarNum()I

    move-result v1

    .line 826
    .local v1, pushCarNums:I
    if-gtz v1, :cond_0

    .line 829
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/net/ResponseListener;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->queryOrderStatus(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onGetState()V
    .locals 4

    .prologue
    .line 771
    const-string v1, "carloopListener onGetState"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/business/FlierOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    :goto_0
    return-void

    .line 775
    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getmSentCnt()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/car/helper/CarPushHelper;->sendOrderStatusMessage(Ljava/lang/String;IILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0
.end method

.method public onGuide()V
    .locals 3

    .prologue
    .line 792
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/business/FlierOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 795
    :cond_0
    const/4 v1, 0x2

    new-instance v2, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;

    invoke-direct {v2, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;)V

    invoke-static {v1, v0, v2}, Lcom/didi/car/net/CarRequest;->getIntroGuideFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onIfWait()V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .parameter "progrss"

    .prologue
    .line 818
    return-void
.end method

.method public onRedict()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictFragment()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    .line 781
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenerTaxi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/flier/business/FlierOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 787
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2702(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;I)I

    .line 788
    return-void
.end method
