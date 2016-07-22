.class final Lcom/didi/map/MapController$5;
.super Ljava/lang/Thread;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->zoomCenterWithActivityDrivers(DDLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:D

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(DDLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/didi/map/MapController$5;->val$lat:D

    iput-wide p3, p0, Lcom/didi/map/MapController$5;->val$lng:D

    iput-object p5, p0, Lcom/didi/map/MapController$5;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 336
    :try_start_0
    iget-wide v2, p0, Lcom/didi/map/MapController$5;->val$lat:D

    iget-wide v4, p0, Lcom/didi/map/MapController$5;->val$lng:D

    iget-object v6, p0, Lcom/didi/map/MapController$5;->val$list:Ljava/util/List;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/didi/map/ZoomManager;->zoomWithActivityMarkers(DDLjava/util/List;)F

    move-result v1

    .line 337
    .local v1, zoom:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 338
    iget-wide v2, p0, Lcom/didi/map/MapController$5;->val$lat:D

    iget-wide v4, p0, Lcom/didi/map/MapController$5;->val$lng:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1           #zoom:F
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
