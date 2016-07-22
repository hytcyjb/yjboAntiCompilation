.class public Lcom/didi/map/marker/PushCarsMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "PushCarsMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public hideMarker()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/didi/map/marker/PushCarsMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/PushCarsMarker$1;-><init>(Lcom/didi/map/marker/PushCarsMarker;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 93
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/didi/map/marker/PushCarsMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/didi/map/marker/PushCarsMarker;->showInfoWindow()V

    .line 87
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 80
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 18
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/PushCarsMarker;->setMarker(DDI)V

    .line 19
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/didi/map/marker/PushCarsMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "push"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 100
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/PushCarsMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 101
    invoke-virtual {p0}, Lcom/didi/map/marker/PushCarsMarker;->showInfoWindow()V

    .line 106
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/PushCarsMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    .line 27
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 33
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateCarContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/didi/map/marker/PushCarsMarker;->updateCarContent(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public updateCarContent(Ljava/lang/String;Z)V
    .locals 2
    .parameter "content"
    .parameter "resetBackground"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->updateCarTime(Ljava/lang/String;)V

    .line 44
    if-eqz p2, :cond_2

    .line 45
    iget-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setDefaultBackground()V

    .line 50
    :goto_1
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/PushCarsMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/didi/map/marker/PushCarsMarker;->showInfoWindow()V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setProgressBackground()V

    goto :goto_1
.end method

.method public updatePushCarTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "count"
    .parameter "time"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/didi/map/marker/PushCarsMarker;->mAdapter:Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const v1, 0x7f0b03f5

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, content:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/didi/map/marker/PushCarsMarker;->updateCarContent(Ljava/lang/String;)V

    goto :goto_0
.end method
