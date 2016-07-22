.class public Lcom/didi/map/marker/TimeDownMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "TimeDownMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 48
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 49
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/didi/map/marker/TimeDownMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h,m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "time_down"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0201c3

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 29
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/TimeDownMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 34
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    invoke-virtual {p0}, Lcom/didi/map/marker/TimeDownMarker;->showInfoWindow()V

    .line 35
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/TimeDownMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 69
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    .line 42
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 43
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 44
    return-void
.end method

.method public updateData(II)V
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->mAdapter:Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->updateTime(II)V

    goto :goto_0
.end method

.method public updateMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/TimeDownMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0
.end method
