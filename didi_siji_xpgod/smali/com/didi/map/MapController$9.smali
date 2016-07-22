.class final Lcom/didi/map/MapController$9;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->addRouteLines(Landroid/content/Context;Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/map/IMapRouteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$listener:Lcom/didi/map/IMapRouteListener;

.field final synthetic val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/didi/map/IMapRouteListener;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/didi/map/MapController$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    iput-object p4, p0, Lcom/didi/map/MapController$9;->val$taxiOrderState:Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 444
    new-instance v4, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;

    invoke-direct {v4}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;-><init>()V

    .line 445
    .local v4, navigationRouteSearch:Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->init(Landroid/content/Context;)V

    .line 447
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatDouble()D

    move-result-wide v8

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLngDouble()D

    move-result-wide v10

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 448
    .local v2, latLngStartPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    iget-object v8, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatDouble()D

    move-result-wide v8

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    iget-object v10, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLngDouble()D

    move-result-wide v10

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 450
    .local v1, latLngEndPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v3, listWaypoints:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-gt v0, v7, :cond_0

    .line 453
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatDouble()D

    move-result-wide v8

    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$list:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLngDouble()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 454
    .local v6, temp:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v6           #temp:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    if-eqz v7, :cond_1

    .line 457
    iget-object v7, p0, Lcom/didi/map/MapController$9;->val$listener:Lcom/didi/map/IMapRouteListener;

    invoke-interface {v7}, Lcom/didi/map/IMapRouteListener;->onStartRequestSuccess()V

    .line 459
    :cond_1
    sget-object v7, Lcom/didi/common/util/Constant;->MAP_KEY:Ljava/lang/String;

    invoke-virtual {v4, v2, v1, v3, v7}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->searchRoute(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/util/List;Ljava/lang/String;)[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    move-result-object v5

    .line 466
    .local v5, routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    new-instance v7, Lcom/didi/map/MapController$9$1;

    invoke-direct {v7, p0, v5}, Lcom/didi/map/MapController$9$1;-><init>(Lcom/didi/map/MapController$9;[Lcom/tencent/tencentmap/navisdk/search/RouteResults;)V

    invoke-static {v7}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method
