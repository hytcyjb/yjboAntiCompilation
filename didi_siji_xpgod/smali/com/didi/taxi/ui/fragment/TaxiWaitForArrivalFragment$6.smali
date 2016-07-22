.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$6;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$6;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriversLocationReceived(Lcom/didi/common/model/NearDrivers;)V
    .locals 5
    .parameter "nearDrivers"

    .prologue
    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------onDriversLocationReceived----------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 842
    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 843
    iget-object v3, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 844
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 845
    .local v0, driver:Lcom/didi/common/model/Driver;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 847
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #driver:Lcom/didi/common/model/Driver;
    check-cast v0, Lcom/didi/common/model/Driver;

    .line 850
    .end local v1           #entry:Ljava/util/Map$Entry;
    .restart local v0       #driver:Lcom/didi/common/model/Driver;
    :cond_0
    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/didi/common/model/Driver;)V

    .line 852
    .end local v0           #driver:Lcom/didi/common/model/Driver;
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
