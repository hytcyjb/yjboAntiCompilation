.class Lcom/didi/map/MapController$9$1;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/MapController$9;

.field final synthetic val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;


# direct methods
.method constructor <init>(Lcom/didi/map/MapController$9;[Lcom/tencent/tencentmap/navisdk/search/RouteResults;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iput-object p2, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 471
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    const-string v1, "\u83b7\u53d6\u8def\u7ebf\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/didi/map/IMapRouteListener;->onStartRequestOnFail(Ljava/lang/String;)V

    .line 610
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    invoke-interface {v0}, Lcom/didi/map/IMapRouteListener;->onStartRequestSuccess()V

    .line 481
    :cond_3
    invoke-static {}, Lcom/didi/map/MapController;->removeRoute()V

    .line 488
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-direct {v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;-><init>()V

    .line 490
    .local v11, options:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->getRoutePoints()[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v13

    .line 491
    .local v13, tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->getPassPoints()[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v14

    .line 492
    .local v14, tempPasspoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->val$routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->getPassPointsIndex()[I

    move-result-object v12

    .line 502
    .local v12, pointsIndex:[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigationRouteSearch.searchRoute routePoints.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  passoints.Lenght:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  pointIndex.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 506
    array-length v0, v13

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 511
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v1, v1, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    array-length v1, v13

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 513
    invoke-virtual {v11, v13}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->add([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 515
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    invoke-static {}, Lcom/didi/map/MapController;->access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-interface {v0, v1, v11, v14}, Lcom/didi/map/IMapRouteListener;->onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v10

    .line 519
    .local v10, mTemppolyline:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    if-eqz v10, :cond_1

    .line 522
    const/4 v8, 0x1

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt v8, v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v14, v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 524
    const-string v1, "addRouteLInes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362 \u539f:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->lat:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->lng:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v8, -0x1

    aget-object v3, v14, v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v8, -0x1

    aget-object v3, v14, v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    new-instance v1, Lcom/didi/map/MapController$9$1$1;

    invoke-direct {v1, p0}, Lcom/didi/map/MapController$9$1$1;-><init>(Lcom/didi/map/MapController$9$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 544
    invoke-static {v10}, Lcom/didi/map/MapController;->access$102(Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 556
    const/4 v0, 0x3

    :try_start_0
    new-array v9, v0, [I

    .line 557
    .local v9, indexs:[I
    const/4 v0, 0x0

    aget v0, v12, v0

    if-nez v0, :cond_7

    .line 558
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 559
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v9, v0

    .line 560
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v12, v1

    aput v1, v9, v0

    .line 568
    :goto_2
    array-length v0, v9

    new-array v6, v0, [I

    .line 569
    .local v6, colors:[I
    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 572
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v6, v0

    .line 573
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v6, v0

    .line 575
    :cond_5
    array-length v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    .line 580
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v6, v0

    .line 581
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v6, v0

    .line 584
    :cond_6
    const/4 v8, 0x0

    :goto_3
    array-length v0, v12

    if-ge v8, v0, :cond_8

    .line 585
    const-string v0, "addRouteLInes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passpoint:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v12, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 562
    .end local v6           #colors:[I
    :cond_7
    const/4 v0, 0x3

    new-array v9, v0, [I

    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v9, v0

    .line 564
    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v1, v12, v1

    aput v1, v9, v0

    .line 565
    const/4 v0, 0x2

    const/4 v1, 0x1

    aget v1, v12, v1

    aput v1, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 593
    .end local v9           #indexs:[I
    :catch_0
    move-exception v7

    .line 594
    .local v7, exception:Ljava/lang/Exception;
    const-string v0, "addRouteLInes"

    const-string v1, "\u8bbe\u7f6e\u8def\u7ebf\u989c\u8272\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "navigationRouteSearch.searchRoute setColor error"

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 601
    .end local v7           #exception:Ljava/lang/Exception;
    :goto_4
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    if-eqz v0, :cond_1

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v2, zoomLatLngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v8, 0x0

    :goto_5
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_a

    .line 604
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 587
    .end local v2           #zoomLatLngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .restart local v6       #colors:[I
    .restart local v9       #indexs:[I
    :cond_8
    const/4 v8, 0x0

    :goto_6
    :try_start_1
    array-length v0, v9

    if-ge v8, v0, :cond_9

    .line 588
    const-string v0, "addRouteLInes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v9, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 591
    :cond_9
    const-string v0, "color_texture_didi.png"

    const-string v1, ""

    const/4 v3, 0x2

    invoke-virtual {v10, v0, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->setCustomerColorTexture(Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    invoke-virtual {v10, v6, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->setColors([I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 606
    .end local v6           #colors:[I
    .end local v9           #indexs:[I
    .restart local v2       #zoomLatLngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :cond_a
    iget-object v0, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v0, v0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    invoke-static {}, Lcom/didi/map/MapController;->access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v4, v4, Lcom/didi/map/MapController$9;->val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;

    iget v4, v4, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/map/MapController$9$1;->this$0:Lcom/didi/map/MapController$9;

    iget-object v4, v4, Lcom/didi/map/MapController$9;->val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;

    iget v4, v4, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/didi/map/IMapRouteListener;->onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
