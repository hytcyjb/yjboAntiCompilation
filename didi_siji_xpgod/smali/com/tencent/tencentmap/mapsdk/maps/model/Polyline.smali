.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# static fields
.field public static final DARK_BLUE:I = 0x6

.field public static final DASHED:I = 0x21

.field public static final DIDI_PSG_BLUE:I = 0x14

.field public static final DIDI_PSG_SLIGHTBLUE:I = 0x0

.field public static final GREEN:I = 0x4

.field public static final GREY:I = 0x0

.field public static final LIGHT_BLUE:I = 0x1

.field public static final RED:I = 0x2

.field public static final WHITE_BLUE:I = 0x13

.field public static final YELLOW:I = 0x3


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/gb;Ljava/lang/String;)V
    .locals 2
    .parameter "opt"
    .parameter "contr"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    .line 69
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 71
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    .line 72
    return-void
.end method


# virtual methods
.method public final addTurnArrow(II)V
    .locals 2
    .parameter "index"
    .parameter "length"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;II)V

    .line 99
    return-void
.end method

.method public final cleanTurnArrow()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->b(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 168
    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 171
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getColor()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getColor()I

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

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
    .line 106
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setArrow(Z)V
    .locals 2
    .parameter "boEnable"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->b(Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->arrow(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 130
    return-void
.end method

.method public final setColor(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->color(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 121
    return-void
.end method

.method public final setColors([I[I)V
    .locals 2
    .parameter "colors"
    .parameter "indexs"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;[I[I)V

    .line 125
    return-void
.end method

.method public final setCustomerColorTexture(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "strTextureName"
    .parameter "strTextureCapName"
    .parameter "rowCount"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public final setGeodesic(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->b()V

    .line 160
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->geodesic(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 161
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
    .line 93
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->setLatLngs(Ljava/util/List;)V

    .line 95
    return-void
.end method

.method public final setVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 152
    return-void
.end method

.method public final setWidth(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Ljava/lang/String;F)V

    .line 111
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->width(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 112
    return-void
.end method

.method public final setZIndex(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->b(Ljava/lang/String;F)V

    .line 142
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 143
    return-void
.end method
