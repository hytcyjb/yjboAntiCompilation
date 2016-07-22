.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "BitmapDescriptorFactory.java"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static defaultMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 78
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 79
    return-object v1
.end method

.method public static defaultMarker(F)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2
    .parameter "f"

    .prologue
    .line 83
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 85
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a(F)V

    .line 86
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 87
    return-object v1
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2
    .parameter "s"

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 54
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 56
    return-object v1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    .local v1, mapNew:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 99
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a(Landroid/graphics/Bitmap;)V

    .line 100
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2
    .parameter "s"

    .prologue
    .line 60
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 62
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 64
    return-object v1
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2
    .parameter "s"

    .prologue
    .line 68
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 70
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->c(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 72
    return-object v1
.end method

.method public static fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 2
    .parameter "i"

    .prologue
    .line 44
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;-><init>(I)V

    .line 46
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a(I)V

    .line 47
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fa;)V

    .line 48
    return-object v1
.end method
