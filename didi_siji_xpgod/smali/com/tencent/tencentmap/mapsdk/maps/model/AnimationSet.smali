.class public Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;
.super Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.source "AnimationSet.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "boShareInterpolator"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;

    .line 47
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cleanAnimation()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;

    .line 56
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->e()V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 1
    .parameter "lanimatetime"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolatoe"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
