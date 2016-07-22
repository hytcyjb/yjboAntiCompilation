.class public Lcom/didi/map/MapRouteListener;
.super Ljava/lang/Object;
.source "MapRouteListener.java"

# interfaces
.implements Lcom/didi/map/IMapRouteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1
    .parameter "map"
    .parameter "options"
    .parameter "passpoints"

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addPolyline(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public onStartRequestOnFail(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 27
    return-void
.end method

.method public onStartRequestRoute()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onStartRequestSuccess()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V
    .locals 7
    .parameter "map"
    .parameter
    .parameter "state"
    .parameter "marginTop"
    .parameter "marginBottom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/high16 v6, 0x4270

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 37
    .local v2, latlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 38
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    aput-object v5, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v0, density:F
    mul-float v5, v6, v0

    float-to-int v3, v5

    .line 43
    .local v3, left:I
    mul-float v5, v6, v0

    float-to-int v4, v5

    .line 45
    .local v4, right:I
    invoke-static {v2, v3, v4, p4, p5}, Lcom/didi/map/MapController;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;IIII)V

    .line 46
    return-void
.end method
