.class public Lcom/didi/map/marker/CarDriverMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "CarDriverMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

.field private mDriver:Lcom/didi/car/model/CarDriver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/CarDriverMarker;)Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    return-object v0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 118
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const-class v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    const-class v2, Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    const-string v3, "did"

    iget-object v4, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v4, v4, Lcom/didi/car/model/CarDriver;->did:Ljava/lang/String;

    const-string v5, "url"

    iget-object v6, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v6, v6, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/didi/common/ui/component/UiHelper;->jumpActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 122
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 128
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    .line 96
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v1, v1, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v0, v0, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    new-instance v1, Lcom/didi/map/marker/CarDriverMarker$1;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/CarDriverMarker$1;-><init>(Lcom/didi/map/marker/CarDriverMarker;)V

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public setMarker(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 37
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "car"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0202e9

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 40
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 41
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/CarDriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/CarDriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 134
    return-void
.end method

.method public upDateDriverPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bit"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {p0}, Lcom/didi/map/marker/CarDriverMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public upDateMarker(Lcom/didi/car/model/CarDriver;)V
    .locals 4
    .parameter "driver"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/map/marker/CarDriverMarker;->mDriver:Lcom/didi/car/model/CarDriver;

    .line 49
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/CarDriverMarker;->setMarker(DD)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/CarDriverMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public upDateMarkerIcon(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 75
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/CarDriverMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 79
    :goto_1
    if-eqz v0, :cond_2

    .line 80
    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/CarDriverMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public updateDriverMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/CarDriverMarker;->updatePositoin(DD)V

    goto :goto_0
.end method
