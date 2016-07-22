.class final Lcom/didi/map/MapController$1;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->set3DMap(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/didi/map/MapController$1;->val$lat:D

    iput-wide p3, p0, Lcom/didi/map/MapController$1;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 176
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, p0, Lcom/didi/map/MapController$1;->val$lat:D

    iget-wide v5, p0, Lcom/didi/map/MapController$1;->val$lng:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-static {}, Lcom/didi/map/MapController;->access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/high16 v2, 0x4234

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newCameraPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v0

    .line 178
    .local v0, cu:Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    invoke-static {}, Lcom/didi/map/MapController;->access$000()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 179
    return-void
.end method
