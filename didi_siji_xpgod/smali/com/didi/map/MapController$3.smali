.class final Lcom/didi/map/MapController$3;
.super Ljava/lang/Thread;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->zoomCenterWithCarDrivers(DDLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/didi/map/MapController$3;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 281
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/didi/map/MapController$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ge v1, v8, :cond_0

    .line 284
    :try_start_1
    iget-object v8, p0, Lcom/didi/map/MapController$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarDriver;

    iget-object v8, v8, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 285
    .local v3, mLat:D
    iget-object v8, p0, Lcom/didi/map/MapController$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarDriver;

    iget-object v8, v8, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 286
    .local v5, mLng:D
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v8, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .end local v3           #mLat:D
    .end local v5           #mLng:D
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v7

    .line 292
    .local v7, mapCenter:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v2, v7}, Lcom/didi/map/ZoomManager;->zoomToSpan(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    .end local v1           #i:I
    .end local v2           #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .end local v7           #mapCenter:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_2
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :catch_1
    move-exception v8

    goto :goto_1
.end method
