.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/au;
.super Ljava/lang/Object;
.source "MapProjection.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ba;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    .locals 1
    .parameter "mapParam"
    .parameter "mapContext"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 38
    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    .line 39
    return-void
.end method

.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 17
    .parameter "mapParam"
    .parameter "geoPoint"

    .prologue
    .line 124
    const-wide/16 v7, 0x0

    .line 125
    .local v7, x:D
    const-wide/16 v9, 0x0

    .line 128
    .local v9, y:D
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g()I

    move-result v11

    shr-int/lit8 v6, v11, 0x1

    .line 129
    .local v6, worldHalfPixels:I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h()D

    move-result-wide v0

    .line 130
    .local v0, pixelsPerLngDegree:D
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i()D

    move-result-wide v2

    .line 132
    .local v2, pixelsPerLngRadian:D
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x412e848000000000L

    div-double/2addr v11, v13

    const-wide v13, 0x3f91df46a2529d39L

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide v13, -0x401000d1b71758e2L

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 135
    const-wide v13, 0x3fefff2e48e8a71eL

    .line 133
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 136
    .local v4, siny:D
    int-to-double v11, v6

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x412e848000000000L

    div-double/2addr v13, v15

    mul-double/2addr v13, v0

    add-double v7, v11, v13

    .line 138
    int-to-double v11, v6

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v13, v4

    const-wide/high16 v15, 0x3ff0

    sub-double/2addr v15, v4

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    const-wide/high16 v15, 0x3fe0

    mul-double/2addr v13, v15

    add-double v9, v11, v13

    .line 141
    .end local v4           #siny:D
    :cond_0
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    return-object v11
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 11
    .parameter "location"

    .prologue
    const-wide v9, 0x412e848000000000L

    .line 73
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v0

    int-to-double v7, v0

    div-double v2, v7, v9

    .line 74
    .local v2, lat:D
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v0

    int-to-double v7, v0

    div-double v4, v7, v9

    .line 76
    .local v4, lon:D
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s()[B

    move-result-object v1

    .line 77
    .local v1, mapParam:[B
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([BDD)Landroid/graphics/PointF;

    move-result-object v6

    .line 80
    .local v6, screenPoint:Landroid/graphics/PointF;
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    iget v9, v6, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 82
    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 5
    .parameter "location"

    .prologue
    .line 60
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s()[B

    move-result-object v0

    .line 61
    .local v0, mapParam:[B
    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    double-to-float v1, v3

    .line 62
    .local v1, screenX:F
    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    double-to-float v2, v3

    .line 63
    .local v2, screenY:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([BFF)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v3

    .line 66
    return-object v3
.end method
