.class public Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;
.super Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.source "AlphaAnimation.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 1
    .parameter "lanimatetime"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolatoe"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
