.class public Lcom/didi/map/marker/TextSimpleFareMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "TextSimpleFareMarker.java"


# instance fields
.field private isUnClick:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public hideMarker()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/didi/map/marker/TextSimpleFareMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/TextSimpleFareMarker$1;-><init>(Lcom/didi/map/marker/TextSimpleFareMarker;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->isUnClick:Z

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v1, "pdjxcalldj_03_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const v2, 0x7f04001b

    const v3, 0x7f04001c

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/MainActivity;->overridePendingTransition(II)V

    .line 92
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->showInfoWindow()V

    .line 100
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 79
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 31
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextSimpleFareMarker;->setMarker(DDI)V

    .line 32
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "text_fare"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 107
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/TextSimpleFareMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 110
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 111
    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 112
    invoke-virtual {p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->showInfoWindow()V

    .line 114
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public setWindowUnClick(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->hideArrow()V

    .line 65
    :goto_1
    iput-boolean p1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->isUnClick:Z

    .line 66
    invoke-virtual {p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->showInfoWindow()V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->showArrow()V

    goto :goto_1
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    .line 39
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 40
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 41
    return-void
.end method

.method public updateTextFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "fare"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 73
    invoke-virtual {p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->showInfoWindow()V

    goto :goto_0
.end method
