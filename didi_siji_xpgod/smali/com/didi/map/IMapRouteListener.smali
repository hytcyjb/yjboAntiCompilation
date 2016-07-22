.class public interface abstract Lcom/didi/map/IMapRouteListener;
.super Ljava/lang/Object;
.source "IMapRouteListener.java"


# virtual methods
.method public abstract onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
.end method

.method public abstract onStartRequestOnFail(Ljava/lang/String;)V
.end method

.method public abstract onStartRequestRoute()V
.end method

.method public abstract onStartRequestSuccess()V
.end method

.method public abstract onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation
.end method
