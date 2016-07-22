.class final Lcom/didi/car/helper/CarDriversHelper$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarDriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarDriversHelper;->getCarDriversData(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic val$business:Lcom/didi/frame/business/Business;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lng:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarDriverList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$business:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lat:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/car/helper/CarDriversHelper;->onGetDriverListFail(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/didi/car/helper/CarDriversHelper;->access$000(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/helper/CarDriversHelper$1;->onError(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarDriverList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$business:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lat:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lng:Ljava/lang/String;

    #calls: Lcom/didi/car/helper/CarDriversHelper;->onGetDriverListFail(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/didi/car/helper/CarDriversHelper;->access$000(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/helper/CarDriversHelper$1;->onFail(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 63
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 64
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/car/helper/CarDriversHelper$1;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Lcom/didi/car/helper/CarDriversHelper$1$1;

    invoke-direct {v0, p0}, Lcom/didi/car/helper/CarDriversHelper$1$1;-><init>(Lcom/didi/car/helper/CarDriversHelper$1;)V

    invoke-virtual {v0}, Lcom/didi/car/helper/CarDriversHelper$1$1;->start()Lthread/Job;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/helper/CarDriversHelper$1;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
