.class public Lcom/didi/soso/location/LocateLib;
.super Ljava/lang/Object;
.source "LocateLib.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serverXToLongitude(D)D
    .locals 2
    .parameter "serverX"

    .prologue
    .line 18
    const-wide v0, 0x40fb2d77da39cc93L

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static serverYToLatitude(D)D
    .locals 6
    .parameter "serverY"

    .prologue
    .line 12
    const-wide v2, 0x40fb2d77da39cc93L

    div-double v0, p0, v2

    .line 13
    .local v0, dblMercatorLat:D
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x3f81df46a2529d39L

    div-double/2addr v2, v4

    const-wide v4, 0x4056800000000000L

    sub-double/2addr v2, v4

    return-wide v2
.end method
