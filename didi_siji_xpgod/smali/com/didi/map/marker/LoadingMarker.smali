.class public Lcom/didi/map/marker/LoadingMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "LoadingMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 76
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "marker"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 18
    return-void
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 82
    return-void
.end method

.method public setMarker(DDLjava/lang/String;I)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 21
    iget-object v1, p0, Lcom/didi/map/marker/LoadingMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    .line 22
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p6}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 24
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 25
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LoadingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/didi/map/marker/LoadingMarker;->showInfoWindow()V

    .line 36
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_1
    return-void

    .line 26
    .restart local v0       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    .line 27
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LoadingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    goto :goto_0

    .line 29
    :cond_1
    iget v1, p0, Lcom/didi/map/marker/LoadingMarker;->type:I

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LoadingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    goto :goto_0

    .line 34
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/LoadingMarker;->updatePositoin(DD)V

    goto :goto_1
.end method

.method public setMarkerType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 69
    iput p1, p0, Lcom/didi/map/marker/LoadingMarker;->type:I

    .line 70
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/map/marker/LoadingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/LoadingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;

    .line 50
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/LoadingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LoadingMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 53
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/LoadingMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/LoadingMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public updateMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/map/marker/LoadingMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/LoadingMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0
.end method
