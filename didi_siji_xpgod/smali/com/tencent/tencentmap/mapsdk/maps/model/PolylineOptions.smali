.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;


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

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->c:F

    .line 30
    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->k:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->d:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->e:F

    .line 32
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->f:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->g:Z

    .line 34
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->a:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public final varargs add(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 1
    .parameter "latlng"
    .parameter "args"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->add([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    .line 73
    :cond_0
    return-object p0
.end method

.method public final add([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 2
    .parameter "alatlng"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 84
    .local v1, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v1           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    return-object p0
.end method

.method public final arrow(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->h:Z

    .line 117
    return-object p0
.end method

.method public final color(I)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 96
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->d:I

    .line 97
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final geodesic(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->g:Z

    .line 112
    return-object p0
.end method

.method public final getColor()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->d:I

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
    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public final isArrow()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->h:Z

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->g:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public final setLatLngs(Ljava/util/List;)V
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
    .line 61
    .local p1, listLatlngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->f:Z

    .line 107
    return-object p0
.end method

.method public final width(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 91
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->c:F

    .line 92
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;

    .line 48
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptionsCreator;->a()V

    .line 49
    return-void
.end method

.method public final zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 101
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->e:F

    .line 102
    return-object p0
.end method
