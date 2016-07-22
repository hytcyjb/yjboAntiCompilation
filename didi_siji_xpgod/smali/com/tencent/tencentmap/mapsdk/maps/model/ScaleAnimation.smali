.class public Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;
.super Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.source "ScaleAnimation.java"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 1
    .parameter "lanimatetime"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolatoe"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
