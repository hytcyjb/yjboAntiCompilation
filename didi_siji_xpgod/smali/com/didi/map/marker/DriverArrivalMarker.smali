.class public Lcom/didi/map/marker/DriverArrivalMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "DriverArrivalMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

.field protected mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 7
    .parameter "latLng"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 36
    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/DriverArrivalMarker;->setMarker(DDIF)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V
    .locals 7
    .parameter "latLng"
    .parameter "bearing"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 32
    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/DriverArrivalMarker;->setMarker(DDIF)V

    .line 33
    return-void
.end method


# virtual methods
.method public addMovePath(Lcom/didi/common/model/Driver;)V
    .locals 7
    .parameter "driver"

    .prologue
    .line 173
    const-string v2, "CarBaseMarker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMovePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    .line 179
    .local v0, i:Lcom/didi/common/model/LocationInfo;
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, v0, Lcom/didi/common/model/LocationInfo;->x:D

    iget-wide v5, v0, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    iget v3, v0, Lcom/didi/common/model/LocationInfo;->timestamp:I

    invoke-virtual {p0, v2, v3}, Lcom/didi/map/marker/DriverArrivalMarker;->addMovePath(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V

    goto :goto_0
.end method

.method public addMovePath(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V
    .locals 6
    .parameter "latLng"
    .parameter "timestamp"

    .prologue
    .line 184
    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DriverArrivalMarker;->updatePositoin(DDI)V

    .line 185
    return-void
.end method

.method public hideMarker()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/didi/map/marker/DriverArrivalMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/DriverArrivalMarker$1;-><init>(Lcom/didi/map/marker/DriverArrivalMarker;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 149
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 141
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->showInfoWindow()V

    .line 135
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 127
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 128
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DriverArrivalMarker;->setMarker(DDI)V

    .line 42
    return-void
.end method

.method public setMarker(DDI)V
    .locals 7
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 153
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/DriverArrivalMarker;->setMarker(DDIF)V

    .line 154
    return-void
.end method

.method public setMarker(DDIF)V
    .locals 5
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"
    .parameter "bearing"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f00

    .line 157
    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getSpecialMarkerIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 163
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p6, v4}, Lcom/didi/map/marker/DriverArrivalMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZ)V

    .line 164
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->showInfoWindow()V

    .line 165
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getSmoothGoingFreguency()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/didi/map/marker/DriverArrivalMarker;->setmMoveAnimationEnable(ZI)V

    .line 170
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 168
    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, p6}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    .line 50
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateCarContent(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 89
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateCarContent(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    .line 105
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateCarContent(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker;->mAdapter:Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->updateText(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/didi/map/marker/DriverArrivalMarker;->showInfoWindow()V

    goto :goto_0
.end method
