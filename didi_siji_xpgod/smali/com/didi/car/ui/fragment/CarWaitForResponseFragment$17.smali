.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarGetState()V
    .locals 4

    .prologue
    .line 821
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2800(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getPushCarNum()I

    move-result v1

    .line 825
    .local v1, pushCarNums:I
    if-gtz v1, :cond_0

    .line 828
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 833
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/common/net/ResponseListener;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->queryOrderStatus(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 811
    return-void
.end method

.method public onGetState()V
    .locals 4

    .prologue
    .line 770
    const-string v1, "carloopListener onGetState"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/business/CarOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    :goto_0
    return-void

    .line 774
    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getmSentCnt()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/car/helper/CarPushHelper;->sendOrderStatusMessage(Ljava/lang/String;IILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto :goto_0
.end method

.method public onGuide()V
    .locals 3

    .prologue
    .line 791
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/business/CarOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 794
    :cond_0
    const/4 v1, 0x2

    new-instance v2, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17$1;-><init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;)V

    invoke-static {v1, v0, v2}, Lcom/didi/car/net/CarRequest;->getIntroGuideFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onIfWait()V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .parameter "progrss"

    .prologue
    .line 817
    return-void
.end method

.method public onRedict()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->redictFragment()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    .line 780
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenerTaxi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2600(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/car/business/CarOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 786
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mDrivers:I
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2702(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;I)I

    .line 787
    return-void
.end method
