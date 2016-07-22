.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ea;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.source "GlTranslateAnimation.java"


# instance fields
.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 3
    .parameter "geoTo"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 12
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->g:Z

    .line 18
    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->g:Z

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(FLandroid/view/animation/Interpolator;)V
    .locals 7
    .parameter "timeEclipseRate"
    .parameter "inter"

    .prologue
    .line 29
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v5, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v6

    sub-int v3, v5, v6

    .line 34
    .local v3, latSpan:I
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v6

    sub-int v4, v5, v6

    .line 35
    .local v4, lngSpan:I
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 36
    .local v2, fInterValue:F
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v5

    int-to-float v6, v3

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 37
    .local v0, curlat:I
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v5

    int-to-float v6, v4

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 39
    .local v1, curlng:I
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    if-eqz v5, :cond_0

    .line 40
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-interface {v5, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;->a(II)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-super {p0, v0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->g:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 55
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ea;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 58
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
