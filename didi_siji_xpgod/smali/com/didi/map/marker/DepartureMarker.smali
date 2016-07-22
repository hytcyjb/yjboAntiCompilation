.class public Lcom/didi/map/marker/DepartureMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "DepartureMarker.java"


# instance fields
.field private isMoveing:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

.field private mMapDragListener:Lcom/didi/map/IMapDragListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/DepartureMarker;->isMoveing:Z

    return-void
.end method

.method public static getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 126
    .local v0, centX:I
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterY()I

    move-result v1

    .line 128
    .local v1, centY:I
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    .line 129
    .local v2, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    return-object v2
.end method

.method public static getDepartCenterY()I
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/DidiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method


# virtual methods
.method public hideFirstGuid()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->hideFirstGuid()V

    .line 121
    :cond_0
    return-void
.end method

.method public hideInfoWindow()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->hideInfoWindow()V

    .line 136
    :cond_0
    return-void
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 173
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :cond_2
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->modifyAddress()V

    .line 180
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    .line 195
    :cond_0
    return-void
.end method

.method public onMapStable()Z
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->onMapStable()Z

    .line 211
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mMapDragListener:Lcom/didi/map/IMapDragListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mMapDragListener:Lcom/didi/map/IMapDragListener;

    invoke-interface {v0}, Lcom/didi/map/IMapDragListener;->onMapStable()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMapTouchEvent(I)V
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMapTouchEvent(I)V

    .line 220
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mMapDragListener:Lcom/didi/map/IMapDragListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mMapDragListener:Lcom/didi/map/IMapDragListener;

    invoke-interface {v0, p1}, Lcom/didi/map/IMapDragListener;->onMapTouchEvent(I)V

    .line 223
    :cond_0
    if-nez p1, :cond_2

    .line 224
    iput-boolean v1, p0, Lcom/didi/map/marker/DepartureMarker;->isMoveing:Z

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    if-ne p1, v1, :cond_1

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/DepartureMarker;->isMoveing:Z

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 185
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 186
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->startAnimation()V

    .line 187
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 200
    return-void
.end method

.method public setMapDragListener(Lcom/didi/map/IMapDragListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/map/marker/DepartureMarker;->mMapDragListener:Lcom/didi/map/IMapDragListener;

    .line 49
    return-void
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 53
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DepartureMarker;->setMarker(DDZ)V

    .line 54
    return-void
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 206
    return-void
.end method

.method public setMarker(DDZ)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "showInfoWindow"

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    .line 61
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

    .line 62
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "my location"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f020253

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 66
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 67
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 68
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 71
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->addListener()V

    .line 72
    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setFixingPointEnable(Z)V

    .line 73
    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setFixingPoint(II)V

    .line 77
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_2
    if-eqz p5, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    goto/16 :goto_0
.end method

.method public showFirstGuid(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->showFirstGuid(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected showInfoWindow()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    .line 161
    :cond_0
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showinfowindow iss moving return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/map/marker/DepartureMarker;->isMoveing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/didi/map/marker/DepartureMarker;->isMoveing:Z

    if-eqz v0, :cond_1

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 166
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 6

    .prologue
    .line 83
    iget-object v4, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v4, :cond_0

    .line 84
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 85
    .local v0, centX:I
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterY()I

    move-result v4

    const/high16 v5, 0x41c8

    invoke-static {v5}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v5

    sub-int v1, v4, v5

    .line 87
    .local v1, centY:I
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 88
    .local v3, target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;

    invoke-direct {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 89
    .local v2, ta:Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;
    new-instance v4, Lcom/didi/map/marker/DepartureMarker$1;

    invoke-direct {v4, p0}, Lcom/didi/map/marker/DepartureMarker$1;-><init>(Lcom/didi/map/marker/DepartureMarker;)V

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    const/16 v4, 0xc8

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->setDuration(I)V

    .line 97
    iget-object v4, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v4, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 98
    iget-object v4, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    .line 100
    .end local v0           #centX:I
    .end local v1           #centY:I
    .end local v2           #ta:Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;
    .end local v3           #target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method public updateMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markerup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/DepartureMarker;->setMarker(DD)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateTextTime(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/DepartureMarker;->mAdapter:Lcom/didi/map/marker/adapter/DepartureMarkAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->updateEstimateTime(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    goto :goto_0
.end method
