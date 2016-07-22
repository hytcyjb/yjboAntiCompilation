.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dx;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
.source "GlAnimationSet.java"


# instance fields
.field protected e:Z

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/dw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "shareInterpolator"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->e:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    .line 16
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->e:Z

    .line 17
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(FLandroid/view/animation/Interpolator;)V
    .locals 5
    .parameter "timeEclipseRate"
    .parameter "inter"

    .prologue
    .line 40
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    if-nez v3, :cond_1

    .line 62
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 44
    .local v2, iSize:I
    if-eqz v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 51
    .restart local v0       #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    if-eqz v0, :cond_2

    .line 52
    iget-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->e:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(FLandroid/view/animation/Interpolator;)V

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(FLandroid/view/animation/Interpolator;)V

    goto :goto_1
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V
    .locals 4
    .parameter "property"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 96
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    if-nez v3, :cond_1

    .line 113
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 101
    .local v2, iSize:I
    if-eqz v2, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 107
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 108
    .restart local v0       #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z
    .locals 6
    .parameter "geoFrom"
    .parameter "getTo"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    move-result v1

    .line 68
    .local v1, boResult:Z
    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v4

    .line 71
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 76
    .local v3, iSize:I
    if-eqz v3, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 82
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 83
    .restart local v0       #animate:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;
    if-eqz v0, :cond_2

    .line 84
    if-eqz v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 81
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 84
    goto :goto_2

    :cond_4
    move v4, v1

    .line 88
    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
