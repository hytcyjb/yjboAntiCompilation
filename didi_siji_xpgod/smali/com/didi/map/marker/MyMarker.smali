.class public Lcom/didi/map/marker/MyMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "MyMarker.java"


# instance fields
.field private compListener:Lcom/didi/map/CompassManager$CompassListener;

.field private mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

.field private mAddress:Lcom/didi/common/model/Address;

.field private mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 171
    new-instance v0, Lcom/didi/map/marker/MyMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/MyMarker$1;-><init>(Lcom/didi/map/marker/MyMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/MyMarker;->compListener:Lcom/didi/map/CompassManager$CompassListener;

    return-void
.end method

.method private isNeedUpdate()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isDDriveRealtimeFragment()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 112
    .local v0, address:Lcom/didi/common/model/Address;
    if-eqz v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/didi/map/marker/MyMarker;->mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/didi/map/marker/MyMarker;->mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v3}, Lcom/didi/common/helper/LocationHelper;->checkMoved(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->addressGot()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/didi/map/marker/MyMarker;->mAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v3, v0}, Lcom/didi/common/model/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 126
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isActivityRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :cond_3
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->modifyAddress()V

    .line 138
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, isHome:Z
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->isRemove()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->showInfoWindow()V

    .line 162
    :cond_1
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 144
    .local v0, flag:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MarkerClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showDepartWindow()V

    .line 150
    :goto_1
    return v1

    .end local v0           #flag:Z
    :cond_0
    move v0, v1

    .line 143
    goto :goto_0

    .line 149
    .restart local v0       #flag:Z
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 150
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v1

    goto :goto_1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 167
    const-string v0, "stopCompass"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/didi/map/MapController;->stopCompass()V

    .line 169
    return-void
.end method

.method public setMarker(DD)V
    .locals 5
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/high16 v4, 0x3f00

    const-wide/16 v2, 0x0

    .line 34
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    .line 38
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

    .line 39
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "my location"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0201c3

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 42
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/didi/map/marker/MyMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFF)V

    .line 44
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->setMarkerTitle()V

    .line 45
    iget-object v1, p0, Lcom/didi/map/marker/MyMarker;->compListener:Lcom/didi/map/CompassManager$CompassListener;

    invoke-static {v1}, Lcom/didi/map/MapController;->startCompass(Lcom/didi/map/CompassManager$CompassListener;)V

    .line 47
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_2
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 184
    return-void
.end method

.method public setMarkerTitle()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    goto :goto_0
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/didi/map/marker/adapter/MyMarkAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/MyMarkAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    .line 100
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 101
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markerup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/MyMarker;->setMarker(DD)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->compListener:Lcom/didi/map/CompassManager$CompassListener;

    invoke-static {v0}, Lcom/didi/map/MapController;->startCompass(Lcom/didi/map/CompassManager$CompassListener;)V

    .line 59
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/MyMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public updateMarkerAddress()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/didi/map/marker/MyMarker;->isNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/MyMarker;->mAddress:Lcom/didi/common/model/Address;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->showInfoWindow()V

    .line 70
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/MyMarker;->mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    goto :goto_0
.end method

.method public updateTextTime(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker;->mAdapter:Lcom/didi/map/marker/adapter/MyMarkAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/MyMarkAdapter;->updateEstimateTime(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/didi/map/marker/MyMarker;->showInfoWindow()V

    goto :goto_0
.end method
