.class public Lcom/didi/map/marker/PushDistanceMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "PushDistanceMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 97
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 88
    invoke-virtual {p0}, Lcom/didi/map/marker/PushDistanceMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/didi/map/marker/PushDistanceMarker;->showInfoWindow()V

    .line 91
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/didi/map/marker/PushDistanceMarker;->showInfoWindow()V

    .line 76
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 83
    return-void
.end method

.method public setMarker(DDI)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "icon"

    .prologue
    .line 22
    iget-object v2, p0, Lcom/didi/map/marker/PushDistanceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v2, :cond_4

    .line 23
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    const-string v3, "push"

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 25
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    .line 26
    .local v1, type:I
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/PushDistanceMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 36
    invoke-virtual {p0}, Lcom/didi/map/marker/PushDistanceMarker;->showInfoWindow()V

    .line 40
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .end local v1           #type:I
    :goto_1
    return-void

    .line 28
    .restart local v0       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .restart local v1       #type:I
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_2

    .line 29
    const/4 v1, 0x3

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_3

    .line 31
    const/4 v1, 0x6

    goto :goto_0

    .line 32
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 33
    const/16 v1, 0xa

    goto :goto_0

    .line 38
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .end local v1           #type:I
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/PushDistanceMarker;->updatePositoin(DD)V

    goto :goto_1
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/PushDistanceMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateDistanceTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "distance"
    .parameter "time"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->updateInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePosition(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/PushDistanceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/PushDistanceMarker;->setMarker(DD)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/PushDistanceMarker;->updatePositoin(DD)V

    .line 67
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/PushDistanceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/didi/map/marker/PushDistanceMarker;->showInfoWindow()V

    goto :goto_0
.end method
