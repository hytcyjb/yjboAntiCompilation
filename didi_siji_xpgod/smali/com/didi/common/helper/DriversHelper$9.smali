.class final Lcom/didi/common/helper/DriversHelper$9;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getCarDriversData(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 493
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/didi/common/helper/DriversHelper;->access$900(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$9;->onError(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/didi/common/helper/DriversHelper;->access$900(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 523
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$9;->onFail(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 496
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 497
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$802(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 498
    iget-object v0, p1, Lcom/didi/car/model/CarDriverList;->arriveTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 501
    :cond_0
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 502
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$9;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 512
    :goto_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 517
    :goto_1
    return-void

    .line 504
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DriversHelper$9$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DriversHelper$9$1;-><init>(Lcom/didi/common/helper/DriversHelper$9;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$9$1;->start()Lthread/Job;

    goto :goto_0

    .line 515
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$9;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
