.class public Lcom/didi/map/MapController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/map/MapController$MapScreenEndListener;,
        Lcom/didi/map/MapController$MyHandler;
    }
.end annotation


# static fields
.field private static mMapScreenListener:Lcom/didi/map/MapController$MapScreenEndListener;

.field private static map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

.field private static mapListener:Lcom/didi/map/listener/MapListener;

.field private static polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

.field private static polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

.field private static poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/didi/map/listener/MapListener;

    invoke-direct {v0}, Lcom/didi/map/listener/MapListener;-><init>()V

    sput-object v0, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    return-void
.end method

.method static synthetic access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    return-object p0
.end method

.method static synthetic access$200()Lcom/didi/map/MapController$MapScreenEndListener;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/map/MapController;->mMapScreenListener:Lcom/didi/map/MapController$MapScreenEndListener;

    return-object v0
.end method

.method public static addRoute(Ljava/lang/String;DDDD)V
    .locals 3
    .parameter "city"
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"

    .prologue
    .line 384
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->remove()V

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/map/MapController$8;

    invoke-direct {v2}, Lcom/didi/map/MapController$8;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/net/CommonRequest;->getLineLatLng(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 413
    return-void
.end method

.method public static addRouteLines(Landroid/content/Context;Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/map/IMapRouteListener;)V
    .locals 8
    .parameter "context"
    .parameter "taxiOrderState"
    .parameter "listener"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 416
    const-string v6, "addRouteLInes"

    .line 417
    .local v6, TAG:Ljava/lang/String;
    iget-object v7, p1, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    .line 418
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiOrderState$TripPoi;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-eqz v0, :cond_3

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, latlngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    if-lt v0, v3, :cond_2

    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    if-lt v0, v3, :cond_2

    .line 426
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :goto_1
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/didi/map/IMapRouteListener;->onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    .end local v2           #latlngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :cond_3
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-nez v0, :cond_0

    .line 439
    invoke-static {v7}, Lcom/didi/map/marker/MarkerController;->addCarPoolMarker(Ljava/util/List;)V

    .line 440
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/map/MapController$9;

    invoke-direct {v1, p0, v7, p2, p1}, Lcom/didi/map/MapController$9;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/didi/map/IMapRouteListener;Lcom/didi/taxi/model/TaxiOrderState;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static clearAnimation()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/didi/map/MapInfoWindowAnimation;->clearAnimation()V

    .line 90
    return-void
.end method

.method public static clearListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMarkerClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V

    .line 82
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMarkerDragListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V

    .line 83
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnInfoWindowClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V

    .line 84
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMapClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V

    .line 85
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setTencentMapGestureListener(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    goto :goto_0
.end method

.method public static controlMapZoom(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 145
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 146
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 147
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 148
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 149
    return-void
.end method

.method public static getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    return-object v0
.end method

.method public static getMapCenterPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public static getMapListener()Lcom/didi/map/listener/MapListener;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    return-object v0
.end method

.method public static getMapScreenSHot(Lcom/didi/map/MapController$MapScreenEndListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 689
    sput-object p0, Lcom/didi/map/MapController;->mMapScreenListener:Lcom/didi/map/MapController$MapScreenEndListener;

    .line 690
    new-instance v0, Lcom/didi/map/MapController$MyHandler;

    invoke-direct {v0}, Lcom/didi/map/MapController$MyHandler;-><init>()V

    .line 691
    .local v0, myhandler:Lcom/didi/map/MapController$MyHandler;
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getScreenShot(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V

    .line 693
    return-void
.end method

.method public static hideMapLogo()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setLogoVisible(Z)V

    .line 122
    return-void
.end method

.method public static initAnimation()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/didi/map/MapInfoWindowAnimation;->initAnimation()V

    .line 94
    return-void
.end method

.method public static isRemoveWayPointsRoute()Z
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/didi/map/MapController;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 9
    .parameter "f"
    .parameter "t"

    .prologue
    .line 375
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 377
    :cond_1
    const/16 v0, 0x1e

    new-array v8, v0, [F

    .line 378
    .local v8, results:[F
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 379
    const/4 v0, 0x0

    aget v0, v8, v0

    goto :goto_0
.end method

.method public static declared-synchronized removeRoute()V
    .locals 2

    .prologue
    .line 618
    const-class v1, Lcom/didi/map/MapController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 624
    :goto_0
    monitor-exit v1

    return-void

    .line 620
    :cond_0
    :try_start_1
    sget-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->remove()V

    .line 621
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/map/MapController;->polyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 623
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeWayPointsRoute()V
    .locals 2

    .prologue
    .line 630
    const-class v1, Lcom/didi/map/MapController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/map/MapController;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lcom/didi/map/MapController;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->remove()V

    .line 632
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/map/MapController;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 633
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_0
    monitor-exit v1

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetListener()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v1, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMarkerClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V

    .line 100
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v1, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMarkerDragListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V

    .line 101
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v1, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnInfoWindowClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V

    .line 102
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v1, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnMapClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V

    .line 103
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    sget-object v1, Lcom/didi/map/MapController;->mapListener:Lcom/didi/map/listener/MapListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setTencentMapGestureListener(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    goto :goto_0
.end method

.method public static resetMap()V
    .locals 1

    .prologue
    .line 647
    invoke-static {}, Lcom/didi/map/MapController;->removeRoute()V

    .line 648
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 649
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 650
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeStartMarker()V

    .line 651
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeEndMarker()V

    .line 652
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeSimpleMarker()V

    .line 653
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 654
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLiveValuatingMarker()V

    .line 655
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextFareMarker()V

    .line 656
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextOrderMarker()V

    .line 657
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushCarMarker()V

    .line 658
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDriveTimeMarker()V

    .line 659
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeVoiceFareMarker()V

    .line 660
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeVoiceMarker()V

    .line 661
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTimeDownMarker()V

    .line 662
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 663
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    .line 664
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 665
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 666
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextSimpleFareMarker()V

    .line 667
    const-string v0, "resetMap"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public static scrollMap(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 192
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->scrollBy(FF)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 193
    return-void
.end method

.method public static set3DMap(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 173
    new-instance v0, Lcom/didi/map/MapController$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/map/MapController$1;-><init>(DD)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method

.method public static setLogoPosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x1

    .line 112
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setLogoVisible(Z)V

    .line 114
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->computeScaledVerticalSize(I)I

    move-result v0

    .line 115
    .local v0, p:I
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setLogoAnchor(I)V

    .line 116
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setLogoBottomMargin(I)V

    .line 117
    return-void
.end method

.method public static setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    sput-object p0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 66
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setMyLocationEnabled(Z)V

    .line 67
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 68
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 69
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setCompassEnabled(Z)V

    .line 70
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 71
    invoke-static {}, Lcom/didi/map/MapController;->resetListener()V

    goto :goto_0
.end method

.method public static setMapCenter(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    const-wide/16 v1, 0x0

    .line 152
    cmpl-double v0, p0, v1

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v1

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmapcenter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static setMapCenterZoom(DDF)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 166
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

    .line 168
    .local v0, cu:Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 169
    return-void
.end method

.method public static setMapNorth()V
    .locals 4

    .prologue
    .line 672
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapNorth(DD)V

    .line 673
    return-void
.end method

.method public static setMapNorth(DD)V
    .locals 5
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 184
    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newCameraPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v0

    .line 188
    .local v0, cu:Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    sget-object v1, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static setMapTraffic(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 126
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setTrafficEnabled(Z)V

    .line 127
    return-void
.end method

.method public static startCompass(Lcom/didi/map/CompassManager$CompassListener;)V
    .locals 1
    .parameter "mCompassListener"

    .prologue
    .line 677
    invoke-static {}, Lcom/didi/map/CompassManager;->getInstance()Lcom/didi/map/CompassManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/map/CompassManager;->startCompass(Lcom/didi/map/CompassManager$CompassListener;)V

    .line 678
    return-void
.end method

.method public static stopCompass()V
    .locals 1

    .prologue
    .line 681
    const-string v0, "stopCompass"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 682
    invoke-static {}, Lcom/didi/map/CompassManager;->getInstance()Lcom/didi/map/CompassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/CompassManager;->stopCompass()V

    .line 683
    return-void
.end method

.method public static zoomCenterWithActivityDrivers(DDLjava/util/List;)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/BaseDriverFactory$BaseDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    new-instance v0, Lcom/didi/map/MapController$5;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/map/MapController$5;-><init>(DDLjava/util/List;)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$5;->start()V

    .line 344
    return-void
.end method

.method public static zoomCenterWithBts(DDLjava/util/ArrayList;)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsUserAround$UserInfo;>;"
    new-instance v0, Lcom/didi/map/MapController$2;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/map/MapController$2;-><init>(DDLjava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$2;->start()V

    .line 264
    return-void
.end method

.method public static zoomCenterWithCarDrivers(DDLjava/util/ArrayList;)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    new-instance v0, Lcom/didi/map/MapController$3;

    invoke-direct {v0, p4}, Lcom/didi/map/MapController$3;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$3;->start()V

    .line 301
    return-void
.end method

.method public static zoomCenterWithDDriveDrivers(DDLjava/util/ArrayList;)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/NearByDriveInfo;>;"
    new-instance v0, Lcom/didi/map/MapController$4;

    invoke-direct {v0, p4}, Lcom/didi/map/MapController$4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$4;->start()V

    .line 330
    return-void
.end method

.method public static zoomCenterWithTaxiDrivers(DDLjava/util/ArrayList;)V
    .locals 8
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v7, v7, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 217
    .local v2, mLat:D
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v7, v7, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 218
    .local v4, mLng:D
    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2           #mLat:D
    .end local v4           #mLng:D
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v6

    .line 225
    .local v6, mapCenter:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v1, v6}, Lcom/didi/map/ZoomManager;->zoomToSpan(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 226
    return-void

    .line 219
    .end local v6           #mapCenter:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static zoomCenterWithTwoMarkers(DDDD)V
    .locals 9
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"

    .prologue
    .line 359
    new-instance v0, Lcom/didi/map/MapController$7;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/didi/map/MapController$7;-><init>(DDDD)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$7;->start()V

    .line 371
    return-void
.end method

.method public static zoomMap(F)V
    .locals 2
    .parameter "level"

    .prologue
    .line 131
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->zoomTo(F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 132
    return-void
.end method

.method public static zoomMapIn()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    const/high16 v1, 0x3f00

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->zoomBy(F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 142
    return-void
.end method

.method public static zoomMapOut()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    const/high16 v1, -0x4100

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->zoomBy(F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 137
    return-void
.end method

.method public static zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V
    .locals 5
    .parameter "list"
    .parameter "top"
    .parameter "bot"

    .prologue
    const/high16 v4, 0x41f0

    .line 696
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 697
    .local v0, density:F
    mul-float v3, v4, v0

    float-to-int v1, v3

    .line 698
    .local v1, left:I
    mul-float v3, v4, v0

    float-to-int v2, v3

    .line 699
    .local v2, right:I
    invoke-static {p0, v1, v2, p1, p2}, Lcom/didi/map/MapController;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;IIII)V

    .line 700
    return-void
.end method

.method public static zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;IIII)V
    .locals 6
    .parameter "list"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bot"

    .prologue
    .line 704
    if-eqz p0, :cond_0

    array-length v4, p0

    if-lez v4, :cond_0

    sget-object v4, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-nez v4, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    .line 708
    .local v0, boundbuilder:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    const/4 v3, 0x0

    .line 709
    .local v3, latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 710
    aget-object v3, p0, v2

    .line 711
    if-nez v3, :cond_2

    .line 709
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 714
    :cond_2
    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 716
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v1

    .line 717
    .local v1, bounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    sget-object v4, Lcom/didi/map/MapController;->map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngBoundsRect(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIII)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static zoomWithTwoMarkers(DDDD)V
    .locals 9
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"

    .prologue
    .line 347
    new-instance v0, Lcom/didi/map/MapController$6;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/didi/map/MapController$6;-><init>(DDDD)V

    invoke-virtual {v0}, Lcom/didi/map/MapController$6;->start()V

    .line 356
    return-void
.end method
