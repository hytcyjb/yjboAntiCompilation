.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bq;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/cb;
.source "MapGestureController.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private b:Z

.field private c:F

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    .locals 1
    .parameter "mapContext"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cb;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 49
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bi;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 50
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ai;)V
    .locals 1
    .parameter "gestureRule"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    .line 62
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->a()Z

    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bi;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bi;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    .line 169
    .local v0, ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;Lcom/tencent/tencentmap/mapsdk/maps/a/bm;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Ljava/lang/Runnable;)V

    .line 177
    .end local v0           #ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final a(F)Z
    .locals 4
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->t()Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 196
    :cond_1
    const/high16 v2, 0x4100

    div-float v2, p1, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-double v0, v2

    .line 197
    .local v0, skew:D
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d(D)V

    .line 198
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final a(FF)Z
    .locals 9
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v3, 0x447a

    const/high16 v2, 0x43fa

    const/4 v8, 0x0

    .line 107
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    if-nez v0, :cond_2

    const/16 v0, 0x80

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/16 v0, 0x1f4

    :cond_0
    :goto_0
    int-to-float v1, v0

    div-float v1, p1, v1

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const-wide/16 v3, 0x200

    float-to-long v5, v2

    const/4 v2, 0x3

    shr-long/2addr v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_1

    iget v0, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;

    const/4 v1, 0x2

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;[DJJLandroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 110
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z
    .locals 12
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "preVector"
    .parameter "postVector"

    .prologue
    .line 229
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    div-double v1, p5, p3

    .line 231
    .local v1, scale:D
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    .line 232
    .local v0, ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    iget v5, p1, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    iget v7, p2, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    iget v9, p2, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    .line 233
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$3;

    invoke-direct {v11, p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;Lcom/tencent/tencentmap/mapsdk/maps/a/bm;)V

    .line 232
    invoke-virtual/range {v0 .. v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DDDDDLjava/lang/Runnable;)V

    .line 241
    .end local v0           #ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    .end local v1           #scale:D
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 12
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "angle"

    .prologue
    const/4 v11, 0x0

    .line 216
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v11

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    float-to-double v1, p3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    iget v5, p1, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    .line 221
    iget v7, p2, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    iget v9, p2, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    .line 220
    invoke-virtual/range {v0 .. v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DDDDD)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s()V

    .line 185
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    .line 187
    :cond_0
    return v1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public final c(FF)Z
    .locals 5
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(DD)V

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    .line 75
    .local v0, ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bq;Lcom/tencent/tencentmap/mapsdk/maps/a/bm;)V

    .line 84
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    .line 85
    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Ljava/lang/Runnable;)V

    .line 86
    .end local v0           #ctrl:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public final e(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    const-string v0, "onSingleTap"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a(FF)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public final g(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h()F

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->c:F

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v4, 0x40a0

    .line 136
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    .line 138
    sget v0, Lcom/tencent/map/lib/gl/a;->b:I

    int-to-float v0, v0

    div-float v0, p2, v0

    sub-float v0, v3, v0

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    const v2, 0x3e4ccccd

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 139
    :goto_0
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->c:F

    .line 138
    mul-float/2addr v0, v2

    float-to-double v2, v0

    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e(D)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_1
    sub-float/2addr v0, v4

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public final i(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public final j(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s()V

    .line 249
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->b:Z

    .line 251
    :cond_0
    return v1
.end method

.method public final k(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method
