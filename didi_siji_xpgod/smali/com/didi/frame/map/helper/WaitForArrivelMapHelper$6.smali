.class final Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$6;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isSimpleMarkerRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateSimpleMarker(DD)V

    .line 448
    :cond_0
    :goto_0
    #calls: Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->addLocLog()V
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->access$000()V

    .line 449
    return-void

    .line 445
    :cond_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isTimeDownMarkerRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateTimeDownMarker(DD)V

    goto :goto_0
.end method
