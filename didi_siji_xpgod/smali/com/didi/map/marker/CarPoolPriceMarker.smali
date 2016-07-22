.class public Lcom/didi/map/marker/CarPoolPriceMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "CarPoolPriceMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mStrPrice:Ljava/lang/String;

.field private mStrRatio:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrPrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrRatio:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 105
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->showInfoWindow()V

    .line 99
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->showInfoWindow()V

    .line 91
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 51
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->showInfoWindow()V

    .line 53
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 28
    const v5, 0x7f0202f7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/CarPoolPriceMarker;->setMarker(DDI)V

    .line 29
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrPrice:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrRatio:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/CarPoolPriceMarker;->updatePrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 39
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

    .line 41
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/CarPoolPriceMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 42
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->showInfoWindow()V

    .line 47
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/CarPoolPriceMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    .line 79
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updatePrice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "price"
    .parameter "ratio"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrPrice:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mStrRatio:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->updatePrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolPriceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolPriceMarker;->showInfoWindow()V

    .line 70
    :cond_1
    return-void
.end method
