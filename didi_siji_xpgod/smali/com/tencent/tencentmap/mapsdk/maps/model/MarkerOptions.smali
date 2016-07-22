.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;


# instance fields
.field private final a:I

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->j:F

    .line 24
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->k:F

    .line 25
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->l:F

    .line 27
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->m:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->n:Z

    .line 32
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->f:F

    .line 33
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->g:F

    .line 34
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->i:Z

    .line 35
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method public final alpha(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "alpha"

    .prologue
    .line 106
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->k:F

    .line 107
    return-object p0
.end method

.method public final anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 80
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->f:F

    .line 81
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->g:F

    .line 82
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final draggable(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->h:Z

    .line 102
    return-object p0
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->k:F

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->f:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->g:F

    return v0
.end method

.method public final getIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->e:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->e:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->e:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->j:F

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->l:F

    return v0
.end method

.method public final icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "bitmapdescriptor"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->e:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    .line 76
    return-object p0
.end method

.method public final infoWindowEnable(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "boEnable"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->m:Z

    .line 71
    return-object p0
.end method

.method public final is3D(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "bo3d"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->n:Z

    .line 117
    return-object p0
.end method

.method public final is3D()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->n:Z

    return v0
.end method

.method public final isDraggable()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->h:Z

    return v0
.end method

.method public final isInfoWindowEnable()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->m:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->i:Z

    return v0
.end method

.method public final position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "latlng"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 66
    return-object p0
.end method

.method public final rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "angle"

    .prologue
    .line 91
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->j:F

    .line 92
    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "s"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->d:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "s"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public final visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "flag"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->i:Z

    .line 112
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;

    .line 48
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptionsCreator;->a()V

    .line 49
    return-void
.end method

.method public final zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .locals 0
    .parameter "index"

    .prologue
    .line 121
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->l:F

    .line 122
    return-object p0
.end method
