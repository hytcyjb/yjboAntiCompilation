.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cu;
.super Ljava/lang/Object;
.source "TransformUtil.java"


# direct methods
.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Landroid/graphics/Point;
    .locals 11
    .parameter "geoCenter"

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "point is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x412e848000000000L

    div-double v3, v7, v9

    .line 303
    .local v3, latitude:D
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x412e848000000000L

    div-double v5, v7, v9

    .line 305
    .local v5, longitude:D
    const-wide v7, 0x4056800000000000L

    add-double/2addr v7, v3

    const-wide v9, 0x3f81df46a2529d39L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide v9, 0x3f91df46a0000000L

    div-double v0, v7, v9

    .line 307
    .local v0, dblMercatorLat:D
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 309
    .local v2, engineCenter:Landroid/graphics/Point;
    const-wide v7, 0x4066800000000000L

    add-double/2addr v7, v5

    const-wide v9, 0x4076800000000000L

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x41b0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 310
    const-wide v7, 0x4066800000000000L

    sub-double/2addr v7, v0

    const-wide v9, 0x4076800000000000L

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x41b0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v2, Landroid/graphics/Point;->y:I

    .line 311
    return-object v2
.end method
