.class final Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPoint(DD)V
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
    .line 317
    iput-wide p1, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;->val$lat:D

    iput-wide p3, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;->val$lat:D

    iget-wide v2, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;->val$lng:D

    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v4

    const/high16 v5, 0x4040

    sub-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    .line 322
    return-void
.end method
