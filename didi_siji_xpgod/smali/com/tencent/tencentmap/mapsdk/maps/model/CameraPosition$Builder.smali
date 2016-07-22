.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->c:F

    .line 19
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->d:F

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)V
    .locals 2
    .parameter "cameraposition"

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->c:F

    .line 19
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->d:F

    .line 49
    move-object v0, p1

    .line 50
    .local v0, cameraposition1:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 51
    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->b:F

    .line 52
    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->c:F

    .line 53
    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->d:F

    .line 54
    return-void
.end method


# virtual methods
.method public final bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "f"

    .prologue
    .line 37
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->d:F

    .line 38
    return-object p0
.end method

.method public final build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->b:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->c:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public final target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "latlng"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 23
    return-object p0
.end method

.method public final tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "f"

    .prologue
    .line 32
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->c:F

    .line 33
    return-object p0
.end method

.method public final zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "f"

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->b:F

    .line 28
    return-object p0
.end method
