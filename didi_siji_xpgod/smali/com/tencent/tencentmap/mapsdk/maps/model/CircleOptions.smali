.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
.super Ljava/lang/Object;
.source "CircleOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;


# instance fields
.field private final a:I

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->c:D

    .line 25
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->d:F

    .line 26
    const/high16 v0, -0x100

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->e:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->f:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->g:F

    .line 29
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->h:Z

    .line 30
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->a:I

    .line 31
    return-void
.end method


# virtual methods
.method public final center(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "latlng"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 68
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final fillColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 87
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->f:I

    .line 88
    return-object p0
.end method

.method public final getCenter()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->f:I

    return v0
.end method

.method public final getRadius()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->e:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->d:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->g:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->h:Z

    return v0
.end method

.method public final radius(D)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "d"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->c:D

    .line 73
    return-object p0
.end method

.method public final strokeColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 82
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->e:I

    .line 83
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 77
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->d:F

    .line 78
    return-object p0
.end method

.method public final visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->h:Z

    .line 98
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 57
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;

    .line 58
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptionsCreator;->a()V

    .line 59
    return-void
.end method

.method public final zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;
    .locals 0
    .parameter "f"

    .prologue
    .line 92
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->g:F

    .line 93
    return-object p0
.end method
