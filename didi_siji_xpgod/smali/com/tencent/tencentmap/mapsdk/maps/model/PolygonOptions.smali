.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
.super Ljava/lang/Object;
.source "PolygonOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->c:F

    .line 31
    const/high16 v0, -0x100

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->d:I

    .line 32
    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->k:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->e:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->f:F

    .line 34
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->g:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->h:Z

    .line 36
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->a:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public final add(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 1
    .parameter "latlng"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p0
.end method

.method public final add([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 2
    .parameter "alatlng"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 83
    .local v1, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v1           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final fillColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 109
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->e:I

    .line 110
    return-object p0
.end method

.method public final geodesic(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->h:Z

    .line 125
    return-object p0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->e:I

    return v0
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
    .line 129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->d:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->c:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->f:F

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->h:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->g:Z

    return v0
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 1
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
    .line 60
    .local p1, listPtsSet:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final strokeColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 104
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->d:I

    .line 105
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 99
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->c:F

    .line 100
    return-object p0
.end method

.method public final visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->g:Z

    .line 120
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;

    .line 51
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptionsCreator;->a()V

    .line 52
    return-void
.end method

.method public final zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 114
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->f:F

    .line 115
    return-object p0
.end method
