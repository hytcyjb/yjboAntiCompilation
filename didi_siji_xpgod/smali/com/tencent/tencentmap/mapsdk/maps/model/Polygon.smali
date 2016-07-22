.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fz;Ljava/lang/String;)V
    .locals 2
    .parameter "opt"
    .parameter "contr"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    .line 19
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 21
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 114
    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;

    .line 117
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getFillColor()I

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setFillColor(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->fillColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 80
    return-void
.end method

.method public final setGeodesic(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->b()V

    .line 106
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->geodesic(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 107
    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->setPoints(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final setStrokeColor(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->b(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->strokeColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 71
    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Ljava/lang/String;F)V

    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->strokeWidth(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 62
    return-void
.end method

.method public final setVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Ljava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 98
    return-void
.end method

.method public final setZIndex(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->b(Ljava/lang/String;F)V

    .line 88
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;

    .line 89
    return-void
.end method
