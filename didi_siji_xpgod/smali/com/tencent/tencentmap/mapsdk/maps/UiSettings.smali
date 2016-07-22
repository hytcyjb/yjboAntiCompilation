.class public final Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ge;)V
    .locals 1
    .parameter "iuisettingsdelegate"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 9
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 10
    return-void
.end method


# virtual methods
.method public final isCompassEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->d()Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMyLocationButtonEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->e()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRotateGesturesEnabled()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->i()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollGesturesEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->f()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTiltGesturesEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->h()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZoomControlsEnabled()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->c()Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->g()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->h(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public final setCompassEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->b(Z)V

    .line 22
    :cond_0
    return-void
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->c(Z)V

    .line 28
    :cond_0
    return-void
.end method

.method public final setRotateGesturesEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->g(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->d(Z)V

    .line 34
    :cond_0
    return-void
.end method

.method public final setTiltGesturesEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->f(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->a(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->e(Z)V

    .line 40
    :cond_0
    return-void
.end method
