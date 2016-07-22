.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/eu;
.super Ljava/lang/Object;
.source "DidiColorMapper.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colorForValue(D)I
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0xff

    const-wide v9, 0x3fe6666666666666L

    const-wide v7, 0x40d3880000000000L

    const-wide/high16 v5, 0x4008

    .line 18
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, p1, v3

    if-lez v3, :cond_0

    .line 19
    const-wide/high16 p1, 0x3ff0

    .line 20
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 22
    const/16 v2, 0x77

    .line 26
    .local v2, green:I
    const/4 v1, 0x3

    .line 27
    .local v1, blue:I
    cmpl-double v3, p1, v9

    if-lez v3, :cond_1

    .line 28
    const/16 v2, 0x4e

    .line 29
    const/4 v1, 0x1

    .line 32
    :cond_1
    const-wide v3, 0x3fe3333333333333L

    cmpl-double v3, p1, v3

    if-lez v3, :cond_3

    .line 33
    sub-double v3, p1, v9

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v7

    const-wide/high16 v5, 0x406e

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 41
    .local v0, alpha:I
    :goto_0
    if-le v0, v11, :cond_2

    .line 42
    const/16 v0, 0xff

    .line 45
    :cond_2
    invoke-static {v0, v11, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 34
    .end local v0           #alpha:I
    :cond_3
    const-wide v3, 0x3fd999999999999aL

    cmpl-double v3, p1, v3

    if-lez v3, :cond_4

    .line 35
    const-wide/high16 v3, 0x3fe0

    sub-double v3, p1, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v7

    const-wide/high16 v5, 0x4069

    add-double/2addr v3, v5

    double-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0

    .line 36
    .end local v0           #alpha:I
    :cond_4
    const-wide v3, 0x3fc999999999999aL

    cmpl-double v3, p1, v3

    if-lez v3, :cond_5

    .line 37
    const-wide v3, 0x3fd3333333333333L

    sub-double v3, p1, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v7

    const-wide/high16 v5, 0x4064

    add-double/2addr v3, v5

    double-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0

    .line 39
    .end local v0           #alpha:I
    :cond_5
    const-wide v3, 0x4085e00000000000L

    mul-double/2addr v3, p1

    double-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method
