.class public Lcom/didi/map/marker/DDriveWaitMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "DDriveWaitMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

.field private valuating:Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_wait_meet_price_popup_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 54
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 46
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 47
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
    iget-object v1, p0, Lcom/didi/map/marker/DDriveWaitMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "text_fare"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f020187

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 28
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/DDriveWaitMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 32
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    invoke-virtual {p0}, Lcom/didi/map/marker/DDriveWaitMarker;->showInfoWindow()V

    .line 33
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/didi/map/marker/DDriveWaitMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 67
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    .line 40
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 41
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 42
    return-void
.end method

.method public updateData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V
    .locals 1
    .parameter "valuating"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/didi/map/marker/DDriveWaitMarker;->valuating:Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;

    .line 61
    iget-object v0, p0, Lcom/didi/map/marker/DDriveWaitMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->updateData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V

    goto :goto_0
.end method
