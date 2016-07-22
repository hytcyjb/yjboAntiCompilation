.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/aq;
.super Ljava/lang/Object;
.source "TweenFx.java"


# direct methods
.method public static a(JFFJ)D
    .locals 3
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 53
    long-to-float v1, p0

    long-to-float v2, p4

    div-float v0, v1, v2

    .line 54
    .local v0, t1:F
    neg-float v1, p3

    mul-float/2addr v1, v0

    const/high16 v2, 0x4000

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    float-to-double v1, v1

    return-wide v1
.end method
