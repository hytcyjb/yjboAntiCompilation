.class final Lcom/didi/common/helper/DriversHelper$10;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getFlierDriversData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarDriverList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetFlierDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/didi/common/helper/DriversHelper;->access$1000(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$10;->onError(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetFlierDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/didi/common/helper/DriversHelper;->access$1000(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$10;->onFail(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 540
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 541
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    .line 542
    iget-object v0, p1, Lcom/didi/car/model/CarDriverList;->arriveTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 544
    :cond_0
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 545
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$10;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 555
    :goto_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 560
    :goto_1
    return-void

    .line 547
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DriversHelper$10$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DriversHelper$10$1;-><init>(Lcom/didi/common/helper/DriversHelper$10;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$10$1;->start()Lthread/Job;

    goto :goto_0

    .line 558
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$10;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
