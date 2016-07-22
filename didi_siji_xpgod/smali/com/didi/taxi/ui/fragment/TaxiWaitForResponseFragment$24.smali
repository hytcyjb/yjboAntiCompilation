.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarGetState()V
    .locals 0

    .prologue
    .line 1495
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeImgDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1453
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showLoadingDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$5000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1454
    return-void
.end method

.method public onGetState()V
    .locals 7

    .prologue
    .line 1386
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v5

    .line 1387
    .local v5, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    .line 1388
    .local v4, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getmSentCnt()I

    move-result v3

    .line 1391
    .local v3, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1392
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v6, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;

    invoke-direct {v6, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;)V

    invoke-static/range {v0 .. v6}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1409
    return-void
.end method

.method public onGuide()V
    .locals 3

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, oid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1435
    const/4 v1, 0x2

    new-instance v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;)V

    invoke-static {v1, v0, v2}, Lcom/didi/car/net/CarRequest;->getIntroGuideFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onIfWait()V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .parameter "progrss"

    .prologue
    .line 1459
    const-string v0, "onProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public onRedict()V
    .locals 1

    .prologue
    .line 1413
    const-string v0, "TaxiWait redictFragment loopListener onRedict"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictFragment()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1415
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1419
    const-string v0, "TaxiWait redictFragment loopListener onStop"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenerTaxi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 1422
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4802(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I

    .line 1423
    return-void
.end method
