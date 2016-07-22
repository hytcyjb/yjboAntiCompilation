.class final Lcom/didi/beatles/map/BtsMapHelper$1;
.super Ljava/lang/Object;
.source "BtsMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsMapHelper;->addRoutes(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

.field final synthetic val$bottom:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gender:I

.field final synthetic val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/didi/beatles/map/BtsRoutePoint;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    iput p3, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$top:I

    iput p4, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$bottom:I

    iput p5, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$gender:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/map/BtsMapHelper$1;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 109
    :try_start_0
    new-instance v5, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;

    invoke-direct {v5}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;-><init>()V

    .line 110
    .local v5, navigationRouteSearch:Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
    iget-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v11}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->init(Landroid/content/Context;)V

    .line 111
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-wide v11, v11, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-object v13, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-wide v13, v13, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-direct {v3, v11, v12, v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 112
    .local v3, latLngStartPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v12, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    iget-wide v11, v11, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-object v13, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v14, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    iget-wide v13, v13, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-direct {v2, v11, v12, v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 114
    .local v2, latLngEndPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, listWaypoints:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    if-gt v1, v11, :cond_0

    .line 116
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    aget-object v11, v11, v1

    iget-wide v11, v11, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-object v13, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    aget-object v13, v13, v1

    iget-wide v13, v13, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 117
    .local v9, temp:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v9           #temp:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    const-string v11, "d601c864d41d5b2e671249edcdc61db5"

    invoke-virtual {v5, v3, v2, v4, v11}, Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;->searchRoute(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/util/List;Ljava/lang/String;)[Lcom/tencent/tencentmap/navisdk/search/RouteResults;

    move-result-object v8

    .line 122
    .local v8, routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    if-eqz v8, :cond_1

    array-length v11, v8

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$000()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 183
    .end local v1           #i:I
    .end local v2           #latLngEndPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v3           #latLngStartPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v4           #listWaypoints:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .end local v5           #navigationRouteSearch:Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
    .end local v8           #routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v1       #i:I
    .restart local v2       #latLngEndPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v3       #latLngStartPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v4       #listWaypoints:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .restart local v5       #navigationRouteSearch:Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
    .restart local v8       #routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    :cond_2
    #calls: Lcom/didi/beatles/map/BtsMapHelper;->removeRoute()V
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$100()V

    .line 127
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-direct {v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;-><init>()V

    iput-object v11, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 129
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-direct {v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;-><init>()V

    .line 130
    .local v6, options:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->getRoutePoints()[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v10

    .line 131
    .local v10, tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->getPassPointsIndex()[I

    move-result-object v7

    .line 132
    .local v7, passindexs:[I
    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    .line 136
    invoke-virtual {v6, v10}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->add([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 137
    iput-object v6, p0, Lcom/didi/beatles/map/BtsMapHelper$1;->polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 139
    new-instance v11, Lcom/didi/beatles/map/BtsMapHelper$1$1;

    invoke-direct {v11, p0, v7, v10}, Lcom/didi/beatles/map/BtsMapHelper$1$1;-><init>(Lcom/didi/beatles/map/BtsMapHelper$1;[I[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    invoke-static {v11}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    .end local v1           #i:I
    .end local v2           #latLngEndPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v3           #latLngStartPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v4           #listWaypoints:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .end local v5           #navigationRouteSearch:Lcom/tencent/tencentmap/navisdk/search/NavigationRouteSearch;
    .end local v6           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .end local v7           #passindexs:[I
    .end local v8           #routeResults:[Lcom/tencent/tencentmap/navisdk/search/RouteResults;
    .end local v10           #tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v11, "addWayPoints"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6dfb\u52a0\u534f\u5546\u8def\u7ebf:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
