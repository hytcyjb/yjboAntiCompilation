.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dv;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.source "GlAlphaAnimation.java"


# instance fields
.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;-><init>()V

    .line 11
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->e:F

    .line 12
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->f:F

    .line 15
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->e:F

    .line 16
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->f:F

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(FLandroid/view/animation/Interpolator;)V
    .locals 5
    .parameter "timeEclipseRate"
    .parameter "inter"

    .prologue
    .line 23
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->f:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->e:F

    sub-float v1, v3, v4

    .line 24
    .local v1, fAlphaSpan:F
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 25
    .local v2, fInterValue:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->e:F

    mul-float v4, v1, v2

    add-float v0, v3, v4

    .line 28
    .local v0, cur:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    if-eqz v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-interface {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;->a(F)V

    .line 31
    :cond_0
    return-void
.end method
