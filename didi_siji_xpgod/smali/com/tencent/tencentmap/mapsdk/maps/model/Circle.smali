.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;
.super Ljava/lang/Object;
.source "Circle.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;Ljava/lang/String;)V
    .locals 2
    .parameter "opt"
    .parameter "contr"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 18
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 20
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 112
    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    .line 115
    .local v0, cirObj:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getCenter()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getCenter()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getCenter()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 45
    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getFillColor()I

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadius()D
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCenter(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latlng"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->center(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    goto :goto_0
.end method

.method public final setFillColor(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->fillColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 87
    return-void
.end method

.method public final setRadius(D)V
    .locals 2
    .parameter "d"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;D)V

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->radius(D)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    goto :goto_0
.end method

.method public final setStrokeColor(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->b(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->strokeColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 78
    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 64
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;F)V

    .line 68
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->strokeWidth(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 105
    return-void
.end method

.method public final setZIndex(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->b(Ljava/lang/String;F)V

    .line 95
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    .line 96
    return-void
.end method
