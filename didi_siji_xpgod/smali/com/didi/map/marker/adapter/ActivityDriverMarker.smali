.class public Lcom/didi/map/marker/adapter/ActivityDriverMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "ActivityDriverMarker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 45
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public setMarker(DD)V
    .locals 4
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "driver"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0202f7

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 23
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 24
    iget-object v1, p0, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 25
    iget-object v1, p0, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setClickable(Z)V

    .line 26
    return-void
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 50
    return-void
.end method

.method public upDateMarker(Lcom/didi/common/model/BaseDriverFactory$BaseDriver;)V
    .locals 4
    .parameter "driver"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->setMarker(DD)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->updatePositoin(DD)V

    goto :goto_0
.end method
