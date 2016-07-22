.class final Lcom/didi/map/MapController$8;
.super Lcom/didi/common/net/ResponseListener;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->addRoute(Ljava/lang/String;DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/map/modle/LineLatLng;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, Lcom/didi/map/modle/LineLatLng;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/map/MapController$8;->onSuccess(Lcom/didi/map/modle/LineLatLng;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/map/modle/LineLatLng;)V
    .locals 9
    .parameter "t"

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    .line 389
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 391
    iget-object v4, p1, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;-><init>()V

    .line 394
    .local v3, options:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p1, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 395
    iget-object v4, p1, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 396
    .local v2, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    .line 394
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    :cond_3
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->add(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    goto :goto_2

    .line 400
    .end local v2           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_4
    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v8, :cond_0

    .line 402
    invoke-static {}, Lcom/didi/map/MapController;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 403
    invoke-static {}, Lcom/didi/map/MapController;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->remove()V

    .line 405
    :cond_5
    invoke-static {}, Lcom/didi/map/MapController;->access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addPolyline(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/map/MapController;->access$102(Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 406
    invoke-static {}, Lcom/didi/map/MapController;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v4

    const-string v5, "color_texture_didi.png"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->setCustomerColorTexture(Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v4

    .line 408
    .local v0, desity:I
    iget-object v4, p1, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    mul-int/lit8 v5, v0, 0x1e

    mul-int/lit8 v6, v0, 0x1e

    mul-int/lit8 v7, v0, 0x1e

    mul-int/lit16 v8, v0, 0x96

    invoke-static {v4, v5, v6, v7, v8}, Lcom/didi/map/ZoomManager;->zoomToSpan(Ljava/util/List;IIII)V

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "options="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/didi/map/MapController;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
