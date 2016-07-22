.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dj;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLCircleOverlay.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private b:D

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 3
    .parameter "map"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    const v1, 0x260f76e

    const v2, 0x6f01574

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 22
    const-wide v0, 0x408f400000000000L

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b:D

    .line 24
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 30
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b:D

    .line 67
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 3
    .parameter "geo"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)V
    .locals 4
    .parameter "cirOpt"

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getCenter()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 39
    .local v1, latlngCenter:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v1, :cond_1

    .line 40
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 41
    .local v0, geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 44
    .end local v0           #geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getRadius()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b:D

    .line 45
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->d(F)V

    .line 46
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getStrokeColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(I)V

    .line 47
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getFillColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b(I)V

    .line 48
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getZIndex()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->c(F)V

    .line 49
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->isVisible()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->I:Z

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 121
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->I:Z

    .line 139
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->I:Z

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 168
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 169
    return-void
.end method
