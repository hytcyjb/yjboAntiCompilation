.class public final Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
.super Ljava/lang/Object;
.source "TencentMapOptions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptionsCreator;


# instance fields
.field private final a:I

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:I

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptionsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->d:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->a:I

    .line 76
    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "context"
    .parameter "attributeset"

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final camera(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 0
    .parameter "cameraposition"

    .prologue
    .line 95
    return-object p0
.end method

.method public final compassEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->f:Ljava/lang/Boolean;

    .line 105
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final getCamera()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMapType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->d:I

    return v0
.end method

.method public final getRotateGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTiltGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final mapType(I)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 0
    .parameter "i"

    .prologue
    .line 89
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->d:I

    .line 90
    return-object p0
.end method

.method public final rotateGesturesEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->j:Ljava/lang/Boolean;

    .line 125
    return-object p0
.end method

.method public final scrollGesturesEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->g:Ljava/lang/Boolean;

    .line 110
    return-object p0
.end method

.method public final tiltGesturesEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->i:Ljava/lang/Boolean;

    .line 120
    return-object p0
.end method

.method public final useViewLifecycleInFragment(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->c:Ljava/lang/Boolean;

    .line 85
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 49
    return-void
.end method

.method public final zOrderOnTop(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->b:Ljava/lang/Boolean;

    .line 80
    return-object p0
.end method

.method public final zoomControlsEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->e:Ljava/lang/Boolean;

    .line 100
    return-object p0
.end method

.method public final zoomGesturesEnabled(Z)Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;
    .locals 1
    .parameter "flag"

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMapOptions;->h:Ljava/lang/Boolean;

    .line 115
    return-object p0
.end method
