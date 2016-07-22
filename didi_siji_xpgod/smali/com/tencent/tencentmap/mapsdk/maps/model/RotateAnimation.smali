.class public Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;
.super Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.source "RotateAnimation.java"


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 6
    .parameter "fromdegree"
    .parameter "todegree"
    .parameter "pivotx"
    .parameter "pivoty"
    .parameter "pivotz"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 1
    .parameter "lanimatetime"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolatoe"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
