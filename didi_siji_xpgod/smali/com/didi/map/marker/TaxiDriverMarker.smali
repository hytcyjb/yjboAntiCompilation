.class public Lcom/didi/map/marker/TaxiDriverMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "TaxiDriverMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

.field private mDriver:Lcom/didi/taxi/model/TaxiDriver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/TaxiDriverMarker;)Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    return-object v0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const-class v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    const-class v2, Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    const-string v3, "did"

    iget-object v4, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v4, v4, Lcom/didi/taxi/model/TaxiDriver;->did:Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/didi/common/ui/component/UiHelper;->jumpActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 103
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    .line 77
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    iget-object v1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiDriver;->avatarUrl:Ljava/lang/String;

    new-instance v1, Lcom/didi/map/marker/TaxiDriverMarker$1;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/TaxiDriverMarker$1;-><init>(Lcom/didi/map/marker/TaxiDriverMarker;)V

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setMarker(DD)V
    .locals 4
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 35
    iget-object v2, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-boolean v2, v2, Lcom/didi/taxi/model/TaxiDriver;->isTripDriver:Z

    if-eqz v2, :cond_0

    .line 36
    const v2, 0x7f0202f9

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 40
    .local v0, bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    :goto_0
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v3, "driver"

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    .line 42
    .local v1, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/didi/map/marker/TaxiDriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 43
    return-void

    .line 38
    .end local v0           #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .end local v1           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_0
    const v2, 0x7f0202f7

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .restart local v0       #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 109
    return-void
.end method

.method public upDateDriverPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bit"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {p0}, Lcom/didi/map/marker/TaxiDriverMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public upDateMarker(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 4
    .parameter "driver"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    .line 47
    iget-object v0, p0, Lcom/didi/map/marker/TaxiDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/TaxiDriverMarker;->setMarker(DD)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/TaxiDriverMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public upDateMarkerIcon(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/TaxiDriverMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 60
    .local v0, bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/didi/map/marker/TaxiDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method
