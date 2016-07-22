.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
.source "MapGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

.field private final synthetic l:J

.field private final synthetic m:J

.field private final synthetic n:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;[DJJLandroid/graphics/PointF;)V
    .locals 1
    .parameter
    .parameter "$anonymous1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    iput-wide p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->l:J

    iput-wide p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->m:J

    iput-object p7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    .line 296
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 308
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->l:J

    sub-long v0, v2, v4

    .line 309
    .local v0, duration:J
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->m:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;)V

    move v2, v10

    .line 324
    :goto_0
    return v2

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->m:J

    invoke-static/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/aq;->a(JFFJ)D

    move-result-wide v6

    .line 316
    .local v6, stepX:D
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->b:[D

    aput-wide v6, v2, v11

    .line 319
    .end local v6           #stepX:D
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->m:J

    invoke-static/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/aq;->a(JFFJ)D

    move-result-wide v8

    .line 321
    .local v8, stepY:D
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->b:[D

    aput-wide v8, v2, v10

    .end local v8           #stepY:D
    :cond_2
    move v2, v11

    .line 324
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;)V

    .line 303
    return-void
.end method
