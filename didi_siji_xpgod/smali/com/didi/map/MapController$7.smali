.class final Lcom/didi/map/MapController$7;
.super Ljava/lang/Thread;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->zoomCenterWithTwoMarkers(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flat:D

.field final synthetic val$flng:D

.field final synthetic val$tlat:D

.field final synthetic val$tlng:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-wide p1, p0, Lcom/didi/map/MapController$7;->val$flat:D

    iput-wide p3, p0, Lcom/didi/map/MapController$7;->val$flng:D

    iput-wide p5, p0, Lcom/didi/map/MapController$7;->val$tlat:D

    iput-wide p7, p0, Lcom/didi/map/MapController$7;->val$tlng:D

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 362
    :try_start_0
    iget-wide v0, p0, Lcom/didi/map/MapController$7;->val$flat:D

    iget-wide v2, p0, Lcom/didi/map/MapController$7;->val$flng:D

    iget-wide v4, p0, Lcom/didi/map/MapController$7;->val$tlat:D

    iget-wide v6, p0, Lcom/didi/map/MapController$7;->val$tlng:D

    invoke-static/range {v0 .. v7}, Lcom/didi/map/ZoomManager;->getZoomSpan(DDDD)F

    move-result v13

    .line 363
    .local v13, zoom:F
    iget-wide v0, p0, Lcom/didi/map/MapController$7;->val$flat:D

    iget-wide v2, p0, Lcom/didi/map/MapController$7;->val$tlat:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double v8, v0, v2

    .line 364
    .local v8, centerlat:D
    iget-wide v0, p0, Lcom/didi/map/MapController$7;->val$flng:D

    iget-wide v2, p0, Lcom/didi/map/MapController$7;->val$tlng:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double v10, v0, v2

    .line 365
    .local v10, centerlng:D
    const/high16 v0, 0x3f80

    sub-float v0, v13, v0

    invoke-static {v8, v9, v10, v11, v0}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v8           #centerlat:D
    .end local v10           #centerlng:D
    .end local v13           #zoom:F
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v12

    .line 367
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
