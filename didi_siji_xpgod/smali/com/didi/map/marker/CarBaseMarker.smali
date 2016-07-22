.class public abstract Lcom/didi/map/marker/CarBaseMarker;
.super Ljava/lang/Object;
.source "CarBaseMarker.java"

# interfaces
.implements Lcom/didi/map/listener/MarkerListener;


# instance fields
.field private adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

.field private mFrequency:I

.field protected mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private mMarkerListener:Lcom/didi/map/listener/MarkerListener;

.field private mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

.field protected mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "latLng"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getSmoothGoingFreguency()I

    move-result v0

    iput v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mFrequency:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/didi/map/marker/CarBaseMarker;->setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V
    .locals 1
    .parameter "latLng"
    .parameter "bearing"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getSmoothGoingFreguency()I

    move-result v0

    iput v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mFrequency:I

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/didi/map/marker/CarBaseMarker;->setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V

    .line 47
    return-void
.end method


# virtual methods
.method public addMovePath(Lcom/didi/common/model/Driver;)V
    .locals 8
    .parameter "driver"

    .prologue
    const/4 v6, 0x0

    .line 129
    const-string v3, "CarBaseMarker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMovePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v3, :cond_2

    .line 135
    iget-object v3, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/LocationInfo;

    .line 136
    .local v2, info:Lcom/didi/common/model/LocationInfo;
    iget-object v3, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v2, Lcom/didi/common/model/LocationInfo;->x:D

    iget-wide v6, v2, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v3}, Lcom/didi/map/marker/CarBaseMarker;->setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 140
    .end local v2           #info:Lcom/didi/common/model/LocationInfo;
    :cond_2
    iget-object v3, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    .line 141
    .local v0, i:Lcom/didi/common/model/LocationInfo;
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v0, Lcom/didi/common/model/LocationInfo;->x:D

    iget-wide v6, v0, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v3}, Lcom/didi/map/marker/CarBaseMarker;->addMovePath(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public addMovePath(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latLng"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/didi/map/marker/CarBaseMarker;->setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    iput-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    .line 153
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mFrequency:I

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->updatePosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method protected abstract getIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
.end method

.method protected abstract getInfoWindowAdapter()Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;
.end method

.method public hideInfoWindow()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->hideInfoWindow()V

    .line 106
    :cond_0
    return-void
.end method

.method public removeMarker()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/didi/map/marker/CarBaseMarker;->removeMarkerListener()V

    .line 111
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->remove()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 115
    :cond_0
    return-void
.end method

.method public removeMarkerListener()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarkerListener:Lcom/didi/map/listener/MarkerListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/didi/map/listener/MapListener;->removeMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 160
    iput p1, p0, Lcom/didi/map/marker/CarBaseMarker;->mFrequency:I

    .line 161
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 162
    return-void
.end method

.method public setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "latLng"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/didi/map/marker/CarBaseMarker;->setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V

    .line 51
    return-void
.end method

.method public setMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V
    .locals 3
    .parameter "latLng"
    .parameter "bearing"

    .prologue
    const/high16 v2, 0x3f00

    .line 54
    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    .line 56
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/didi/map/marker/CarBaseMarker;->getIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 61
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 62
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/CarBaseMarker;->showInfoWindow(Ljava/lang/String;)V

    .line 67
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 65
    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0
.end method

.method public setMarkerListener(Lcom/didi/map/listener/MarkerListener;)V
    .locals 2
    .parameter "markerListener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarkerListener:Lcom/didi/map/listener/MarkerListener;

    .line 119
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1, p1}, Lcom/didi/map/listener/MapListener;->addMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;Lcom/didi/map/listener/MarkerListener;)V

    .line 120
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/didi/map/marker/CarBaseMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method public showInfoWindow(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/didi/map/marker/CarBaseMarker;->getInfoWindowAdapter()Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    .line 83
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;->updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 86
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 89
    :cond_1
    return-void
.end method

.method public showInfoWindow(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/didi/map/marker/CarBaseMarker;->getInfoWindowAdapter()Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    .line 94
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;->updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    .line 97
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 100
    :cond_1
    return-void
.end method

.method public showInfoWindow(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/didi/map/marker/CarBaseMarker;->getInfoWindowAdapter()Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    .line 72
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->adapter:Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;->updateText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/didi/map/marker/CarBaseMarker;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 78
    :cond_1
    return-void
.end method
