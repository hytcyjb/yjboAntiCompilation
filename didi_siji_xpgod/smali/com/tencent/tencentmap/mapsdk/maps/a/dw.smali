.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.super Ljava/lang/Object;
.source "GlAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:J

.field protected c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

.field protected d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

.field private e:Z

.field private f:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a:I

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->b:J

    .line 19
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->f:Landroid/view/animation/Interpolator;

    .line 21
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    .line 22
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->f:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected abstract a(FLandroid/view/animation/Interpolator;)V
.end method

.method public final a(I)V
    .locals 0
    .parameter "iDurationTime"

    .prologue
    .line 48
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a:I

    .line 49
    return-void
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolatoe"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->f:Landroid/view/animation/Interpolator;

    .line 37
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    .line 29
    return-void
.end method

.method public a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    .line 33
    return-void
.end method

.method public a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z
    .locals 3
    .parameter "geoFrom"
    .parameter "getTo"

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a:I

    if-gtz v1, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->b:J

    .line 56
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    .line 57
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    .line 65
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    return v0
.end method

.method public final d()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 72
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 76
    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->b:J

    sub-long/2addr v1, v3

    .line 77
    long-to-float v1, v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 78
    .local v0, fTimeRate:F
    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->e:Z

    .line 81
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v5, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(FLandroid/view/animation/Interpolator;)V

    .line 83
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;->a()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(FLandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
