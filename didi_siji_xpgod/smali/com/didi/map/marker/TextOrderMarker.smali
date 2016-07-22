.class public Lcom/didi/map/marker/TextOrderMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "TextOrderMarker.java"


# instance fields
.field private isUnClick:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public hideMarker()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/didi/map/marker/TextOrderMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/TextOrderMarker$1;-><init>(Lcom/didi/map/marker/TextOrderMarker;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 103
    iget-boolean v1, p0, Lcom/didi/map/marker/TextOrderMarker;->isUnClick:Z

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_1

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const-string v1, "display_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const v2, 0x7f04001b

    const v3, 0x7f04001c

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/MainActivity;->overridePendingTransition(II)V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->modifyStart()V

    goto :goto_1
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/map/marker/TextOrderMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/didi/map/marker/TextOrderMarker;->showInfoWindow()V

    .line 122
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 97
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 98
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 126
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextOrderMarker;->setMarker(DDI)V

    .line 127
    return-void
.end method

.method public setMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 34
    iget-object v2, p0, Lcom/didi/map/marker/TextOrderMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v2, :cond_2

    .line 35
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    .line 38
    .local v1, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 39
    invoke-virtual {v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 40
    invoke-virtual {p0, v5}, Lcom/didi/map/marker/TextOrderMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 41
    .local v0, bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 44
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 58
    .end local v0           #bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .end local v1           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 47
    .restart local v0       #bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .restart local v1       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/map/marker/TextOrderMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 49
    invoke-virtual {p0, v4, v5}, Lcom/didi/map/marker/TextOrderMarker;->appearAnimation(FZ)V

    .line 50
    invoke-virtual {p0}, Lcom/didi/map/marker/TextOrderMarker;->addListener()V

    .line 55
    .end local v0           #bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .end local v1           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_1
    iget-object v2, p0, Lcom/didi/map/marker/TextOrderMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/didi/map/marker/TextOrderMarker;->showInfoWindow()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/didi/map/marker/TextOrderMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/TextOrderMarker;->updatePositoin(DD)V

    goto :goto_1
.end method

.method public setWindowUnClick(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->hideArrow()V

    .line 91
    :goto_1
    iput-boolean p1, p0, Lcom/didi/map/marker/TextOrderMarker;->isUnClick:Z

    .line 92
    invoke-virtual {p0}, Lcom/didi/map/marker/TextOrderMarker;->showInfoWindow()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;->showArrow()V

    goto :goto_1
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    .line 65
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextOrderMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextOrderMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 66
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 67
    return-void
.end method
