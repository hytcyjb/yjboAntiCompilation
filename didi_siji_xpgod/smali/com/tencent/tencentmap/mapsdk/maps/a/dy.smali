.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dy;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.source "GlRotateAnimation.java"


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1
    .parameter "fromdegree"
    .parameter "todegree"
    .parameter "pivotx"
    .parameter "pivoty"
    .parameter "pivotz"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;-><init>()V

    .line 7
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->e:F

    .line 8
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->f:F

    .line 9
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->g:F

    .line 10
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->h:F

    .line 11
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->i:F

    .line 17
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->e:F

    .line 18
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->f:F

    .line 19
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->g:F

    .line 20
    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->h:F

    .line 21
    iput p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->i:F

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(FLandroid/view/animation/Interpolator;)V
    .locals 7
    .parameter "timeEclipseRate"
    .parameter "inter"

    .prologue
    .line 28
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->f:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->e:F

    sub-float v1, v3, v4

    .line 36
    .local v1, fAngleSpan:F
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 37
    .local v2, fInterValue:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->e:F

    mul-float v4, v1, v2

    add-float v0, v3, v4

    .line 44
    .local v0, cur:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->g:F

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->h:F

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dy;->i:F

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;->a(FFFF)V

    .line 47
    :cond_0
    return-void
.end method
