.class public final Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static newCameraPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "cameraposition"

    .prologue
    .line 58
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 59
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->g:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 60
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    .line 61
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static newLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "latlng"

    .prologue
    .line 65
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 66
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->h:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 67
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 68
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static newLatLngBounds(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;I)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "latlngbounds"
    .parameter "iPadding"

    .prologue
    .line 81
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 82
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->j:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 83
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->y:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 84
    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->z:I

    .line 85
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static newLatLngBoundsRect(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIII)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "latlngbounds"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bom"

    .prologue
    .line 102
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 103
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->l:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 104
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 105
    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->E:I

    .line 106
    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->F:I

    .line 107
    iput p3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->G:I

    .line 108
    iput p4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->H:I

    .line 110
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "latlng"
    .parameter "f"

    .prologue
    .line 72
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 73
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->i:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 74
    iput-object p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 75
    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->x:F

    .line 76
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static rotateTo(FF)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "rotate"
    .parameter "skew"

    .prologue
    .line 114
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 115
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->m:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 116
    iput p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->I:F

    .line 117
    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->J:F

    .line 119
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static scrollBy(FF)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "fxPixel"
    .parameter "fyPixel"

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 28
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->c:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 30
    iput p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->o:F

    .line 31
    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->p:F

    .line 32
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static zoomBy(F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "f"

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 44
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->e:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 45
    iput p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->r:F

    .line 46
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "f"
    .parameter "point"

    .prologue
    .line 50
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 51
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->f:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 52
    iput p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->s:F

    .line 53
    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    .line 54
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static zoomIn()Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 16
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->a:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 17
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static zoomOut()Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 22
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->b:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 23
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method

.method public static zoomTo(F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;
    .locals 2
    .parameter "f"

    .prologue
    .line 36
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;-><init>()V

    .line 37
    .local v0, camerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->d:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    .line 38
    iput p0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->q:F

    .line 39
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fb;)V

    return-object v1
.end method
