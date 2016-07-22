.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

.field private final synthetic l:J

.field private final synthetic m:F

.field private final synthetic n:F

.field private final synthetic o:D

.field private final synthetic p:D

.field private final synthetic q:D

.field private final synthetic r:D


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bm;[DJFFDD)V
    .locals 2
    .parameter
    .parameter "$anonymous1"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    iput-wide p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->l:J

    iput p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->m:F

    iput p6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->n:F

    iput-wide p7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->o:D

    iput-wide p9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->p:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->q:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->r:D

    .line 1300
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[DZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 14

    .prologue
    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1307
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->l:J

    sub-long v0, v2, v4

    .line 1308
    .local v0, duration:J
    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->m:F

    const-wide/16 v4, 0x1388

    invoke-static/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/aq;->a(JFFJ)D

    move-result-wide v8

    .line 1309
    .local v8, rStep:D
    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->n:F

    const-wide/16 v4, 0x1388

    invoke-static/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/aq;->a(JFFJ)D

    move-result-wide v10

    .line 1311
    .local v10, sStep:D
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v4, v12

    aput-wide v4, v2, v3

    .line 1312
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x3

    aget-wide v4, v2, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v4, v12

    aput-wide v4, v2, v3

    .line 1314
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->o:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v6, 0x1

    .line 1315
    .local v6, isREnd:Z
    :goto_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->p:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v7, 0x1

    .line 1316
    .local v7, isSEnd:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 1317
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->q:D

    iget-object v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v12

    float-to-double v12, v12

    sub-double/2addr v4, v12

    aput-wide v4, v2, v3

    .line 1322
    :goto_2
    if-eqz v7, :cond_3

    .line 1323
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->r:D

    iget-object v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v12

    float-to-double v12, v12

    sub-double/2addr v4, v12

    aput-wide v4, v2, v3

    .line 1328
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    :goto_4
    return v2

    .line 1314
    .end local v6           #isREnd:Z
    .end local v7           #isSEnd:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1315
    .restart local v6       #isREnd:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1319
    .restart local v7       #isSEnd:Z
    :cond_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x0

    aput-wide v8, v2, v3

    goto :goto_2

    .line 1325
    :cond_3
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;->b:[D

    const/4 v3, 0x1

    aput-wide v10, v2, v3

    goto :goto_3

    .line 1328
    :cond_4
    const/4 v2, 0x0

    goto :goto_4
.end method
