.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$5;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriversLocationReceived(Lcom/didi/common/model/NearDrivers;)V
    .locals 4
    .parameter "nearDrivers"

    .prologue
    .line 516
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 517
    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 518
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 519
    .local v0, driver:Lcom/didi/common/model/Driver;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 521
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #driver:Lcom/didi/common/model/Driver;
    check-cast v0, Lcom/didi/common/model/Driver;

    .line 524
    .end local v1           #entry:Ljava/util/Map$Entry;
    .restart local v0       #driver:Lcom/didi/common/model/Driver;
    :cond_0
    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/didi/common/model/Driver;)V

    .line 525
    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 526
    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Ljava/lang/String;)V

    .line 529
    .end local v0           #driver:Lcom/didi/common/model/Driver;
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
