.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dz;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.source "GlScaleAnimation.java"


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;-><init>()V

    .line 11
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->e:F

    .line 12
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->f:F

    .line 13
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->g:F

    .line 14
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->h:F

    .line 17
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->e:F

    .line 18
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->f:F

    .line 19
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->g:F

    .line 20
    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->h:F

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(FLandroid/view/animation/Interpolator;)V
    .locals 7
    .parameter "timeEclipseRate"
    .parameter "inter"

    .prologue
    .line 27
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->f:F

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->e:F

    sub-float v3, v5, v6

    .line 31
    .local v3, xDistance:F
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->h:F

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->g:F

    sub-float v4, v5, v6

    .line 32
    .local v4, yDistance:F
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 33
    .local v2, fInterValue:F
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->e:F

    mul-float v6, v3, v2

    add-float v0, v5, v6

    .line 34
    .local v0, curX:F
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->g:F

    mul-float v6, v4, v2

    add-float v1, v5, v6

    .line 37
    .local v1, curY:F
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    if-eqz v5, :cond_0

    .line 38
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dz;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-interface {v5, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;->a(FF)V

    goto :goto_0
.end method
