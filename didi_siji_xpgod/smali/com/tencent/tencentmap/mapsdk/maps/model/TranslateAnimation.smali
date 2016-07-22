.class public Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;
.super Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.source "TranslateAnimation.java"


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "mTarget"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 19
    .local v0, geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 1
    .parameter "lanimatetime"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolatoe"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
