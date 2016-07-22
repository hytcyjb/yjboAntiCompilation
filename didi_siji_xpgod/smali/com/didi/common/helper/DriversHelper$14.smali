.class final Lcom/didi/common/helper/DriversHelper$14;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getAsyncDrivers(Ljava/lang/String;DDDD)V
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
.field final synthetic val$fromLat:D

.field final synthetic val$fromLng:D

.field final synthetic val$toLat:D

.field final synthetic val$toLng:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    iput-wide p1, p0, Lcom/didi/common/helper/DriversHelper$14;->val$fromLat:D

    iput-wide p3, p0, Lcom/didi/common/helper/DriversHelper$14;->val$fromLng:D

    iput-wide p5, p0, Lcom/didi/common/helper/DriversHelper$14;->val$toLat:D

    iput-wide p7, p0, Lcom/didi/common/helper/DriversHelper$14;->val$toLng:D

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 7
    .parameter "driverList"

    .prologue
    .line 889
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 890
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 891
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    .line 892
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, p0, Lcom/didi/common/helper/DriversHelper$14;->val$fromLat:D

    iget-wide v4, p0, Lcom/didi/common/helper/DriversHelper$14;->val$fromLng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, p0, Lcom/didi/common/helper/DriversHelper$14;->val$toLat:D

    iget-wide v5, p0, Lcom/didi/common/helper/DriversHelper$14;->val$toLng:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    #calls: Lcom/didi/common/helper/DriversHelper;->showCarAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->access$1700(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 894
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 885
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$14;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
