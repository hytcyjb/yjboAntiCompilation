.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ep;
.super Ljava/lang/Object;
.source "HeatProjection.java"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 4
    .parameter "mapView"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/high16 v0, 0x41b0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a:D

    .line 12
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a:D

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->b:D

    .line 14
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a:D

    const-wide v2, 0x4076800000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->c:D

    .line 16
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a:D

    const-wide v2, 0x401921fb54442d18L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->d:D

    .line 21
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 22
    return-void
.end method

.method public static a(I)D
    .locals 4
    .parameter "scaleLevel"

    .prologue
    .line 60
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    int-to-double v0, v0

    .line 62
    const-wide/high16 v2, 0x4130

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 11
    .parameter "pixelP"

    .prologue
    .line 29
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .line 30
    .local v0, centerPixel:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    sget v5, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-double v5, v5

    iget-wide v7, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    sub-double/2addr v7, v9

    add-double v1, v5, v7

    .line 31
    .local v1, x:D
    sget v5, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-double v5, v5

    iget-wide v7, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    sub-double/2addr v7, v9

    sub-double v3, v5, v7

    .line 33
    .local v3, y:D
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    return-object v5
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 14
    .parameter "p"

    .prologue
    const-wide v10, 0x412e848000000000L

    const-wide/high16 v12, 0x3ff0

    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .local v2, x:D
    const-wide/16 v4, 0x0

    .line 71
    .local v4, y:D
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v10

    const-wide v8, 0x3f91df46a2529d39L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, -0x401000d1b71758e2L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fefff2e48e8a71eL

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 75
    .local v0, siny:D
    iget-wide v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->b:D

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    iget-wide v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->c:D

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 77
    iget-wide v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->b:D

    add-double v8, v12, v0

    sub-double v10, v12, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    iget-wide v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->d:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 81
    .end local v0           #siny:D
    :cond_0
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 82
    return-object v6
.end method

.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    return-object v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 5
    .parameter "p"

    .prologue
    .line 43
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a(I)D

    move-result-wide v1

    .line 44
    .local v1, scale:D
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    .line 45
    .local v0, p20:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    div-double/2addr v3, v1

    iput-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 46
    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    div-double/2addr v3, v1

    iput-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 47
    return-object v0
.end method
