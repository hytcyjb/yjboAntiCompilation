.class public Lcom/didi/frame/departure/DepartureMap;
.super Ljava/lang/Object;
.source "DepartureMap.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;
    }
.end annotation


# static fields
.field private static departure:Lcom/didi/frame/departure/DepartureMap;

.field private static listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

.field private static map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;


# instance fields
.field private isScroll:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$000()Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    return-object v0
.end method

.method private static getInstance()Lcom/didi/frame/departure/DepartureMap;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->departure:Lcom/didi/frame/departure/DepartureMap;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/didi/frame/departure/DepartureMap;

    invoke-direct {v0}, Lcom/didi/frame/departure/DepartureMap;-><init>()V

    sput-object v0, Lcom/didi/frame/departure/DepartureMap;->departure:Lcom/didi/frame/departure/DepartureMap;

    .line 56
    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->departure:Lcom/didi/frame/departure/DepartureMap;

    return-object v0
.end method

.method public static setListener(Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 44
    sput-object p0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    .line 45
    return-void
.end method

.method public static setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 34
    sput-object p0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 35
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setMyLocationEnabled(Z)V

    .line 36
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 37
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 38
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setCompassEnabled(Z)V

    .line 39
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setLogoVisible(Z)V

    .line 40
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->getInstance()Lcom/didi/frame/departure/DepartureMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setTencentMapGestureListener(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    .line 41
    return-void
.end method

.method public static setMapCenter(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 48
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v0

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/frame/departure/DepartureMap;->setMapCenterZoom(DDF)V

    .line 49
    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->setMyLocationMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 50
    return-void
.end method

.method private static setMapCenterZoom(DDF)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 70
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newCameraPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v0

    .line 72
    .local v0, cu:Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    sget-object v1, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 73
    return-void
.end method

.method public static setMapNorth(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 8
    .parameter "latlng"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newCameraPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v0

    .line 65
    .local v0, cu:Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    sget-object v1, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0
.end method

.method public static setMyLocationMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 9

    .prologue
    const/high16 v8, 0x3f00

    .line 76
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v4

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    const v3, 0x7f0201c2

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    .line 79
    .local v1, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-virtual {v1, v8, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 80
    sget-object v2, Lcom/didi/frame/departure/DepartureMap;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    .line 81
    .local v0, marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 93
    const-string v0, "MaponDown"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    invoke-interface {v0}, Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;->onDown()V

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 101
    const-string v0, "MaponFling"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onMapStable()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onScroll(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 112
    const-string v0, "MaponScroll"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/departure/DepartureMap;->isScroll:Z

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTap(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 119
    const-string v0, "MaponSingleTap"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(FF)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v0, "MaponUp"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lcom/didi/frame/departure/DepartureMap;->isScroll:Z

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/didi/frame/departure/DepartureMap;->listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    invoke-interface {v0}, Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;->onRefresh()V

    .line 144
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    iput-boolean v3, p0, Lcom/didi/frame/departure/DepartureMap;->isScroll:Z

    .line 132
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 133
    const-string v0, "taxi_depart_map_move"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    :goto_1
    new-instance v0, Lcom/didi/frame/departure/DepartureMap$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartureMap$1;-><init>(Lcom/didi/frame/departure/DepartureMap;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "car_depart_map_move"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method
