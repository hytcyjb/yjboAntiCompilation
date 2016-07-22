.class public Lcom/didi/map/marker/DriverMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "DriverMarker.java"


# instance fields
.field private frequency:I

.field private mDriver:Lcom/didi/common/model/Driver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 40
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getSmoothHomeFreguency()I

    move-result v0

    iput v0, p0, Lcom/didi/map/marker/DriverMarker;->frequency:I

    return-void
.end method


# virtual methods
.method public getDriver()Lcom/didi/common/model/Driver;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/map/marker/DriverMarker;->mDriver:Lcom/didi/common/model/Driver;

    return-object v0
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 115
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 121
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DriverMarker;->setMarker(DDF)V

    .line 45
    return-void
.end method

.method public setMarker(DDF)V
    .locals 5
    .parameter "lat"
    .parameter "lng"
    .parameter "bearing"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/didi/map/marker/DriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/DriverMarker;->updatePositoinWithAnimation(DD)V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "car"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 57
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-static {}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getSpecialMarkerIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 58
    invoke-virtual {p0, v0, v3, p5, v4}, Lcom/didi/map/marker/DriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZ)V

    .line 60
    iget v1, p0, Lcom/didi/map/marker/DriverMarker;->frequency:I

    invoke-virtual {p0, v4, v1}, Lcom/didi/map/marker/DriverMarker;->setmMoveAnimationEnable(ZI)V

    .line 62
    iget-object v1, p0, Lcom/didi/map/marker/DriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 63
    iget-object v1, p0, Lcom/didi/map/marker/DriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setClickable(Z)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 127
    return-void
.end method

.method public updateMarker(Lcom/didi/common/model/Driver;Z)V
    .locals 12
    .parameter "driver"
    .parameter "isShowAppearAnimation"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/didi/map/marker/DriverMarker;->mDriver:Lcom/didi/common/model/Driver;

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v8, 0x0

    .line 85
    .local v8, firstOffset:I
    iget-object v0, p0, Lcom/didi/map/marker/DriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/common/model/LocationInfo;

    .line 87
    .local v7, first:Lcom/didi/common/model/LocationInfo;
    iget-wide v1, v7, Lcom/didi/common/model/LocationInfo;->x:D

    iget-wide v3, v7, Lcom/didi/common/model/LocationInfo;->y:D

    iget-wide v5, v7, Lcom/didi/common/model/LocationInfo;->direction:D

    double-to-float v5, v5

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/DriverMarker;->setMarker(DDFZ)V

    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 91
    .end local v7           #first:Lcom/didi/common/model/LocationInfo;
    :cond_2
    iget-object v0, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 92
    .local v11, size:I
    if-eq v11, v8, :cond_0

    .line 96
    const/4 v10, 0x0

    .line 97
    .local v10, locationInfo:Lcom/didi/common/model/LocationInfo;
    move v9, v8

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 98
    iget-object v0, p1, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #locationInfo:Lcom/didi/common/model/LocationInfo;
    check-cast v10, Lcom/didi/common/model/LocationInfo;

    .line 99
    .restart local v10       #locationInfo:Lcom/didi/common/model/LocationInfo;
    iget-wide v1, v10, Lcom/didi/common/model/LocationInfo;->x:D

    iget-wide v3, v10, Lcom/didi/common/model/LocationInfo;->y:D

    iget v5, v10, Lcom/didi/common/model/LocationInfo;->timestamp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DriverMarker;->updatePositoin(DDI)V

    .line 97
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
