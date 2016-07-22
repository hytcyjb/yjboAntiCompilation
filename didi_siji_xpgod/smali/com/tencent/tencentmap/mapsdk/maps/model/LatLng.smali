.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;


# instance fields
.field private final a:I

.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .parameter "d"
    .parameter "d1"

    .prologue
    .line 29
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DDB)V

    .line 30
    return-void
.end method

.method private constructor <init>(DDB)V
    .locals 6
    .parameter "d"
    .parameter "d1"
    .parameter

    .prologue
    const-wide v4, 0x4076800000000000L

    const-wide v2, 0x4066800000000000L

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->a:I

    .line 21
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_0

    cmpg-double v0, p3, v2

    if-gez v0, :cond_0

    .line 22
    iput-wide p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 25
    :goto_0
    const-wide v0, -0x3fa9800000000000L

    const-wide v2, 0x4056800000000000L

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 26
    return-void

    .line 24
    :cond_0
    sub-double v0, p3, v2

    rem-double/2addr v0, v4

    add-double/2addr v0, v4

    rem-double/2addr v0, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngCreator;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    instance-of v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-nez v3, :cond_2

    move v1, v2

    .line 61
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 64
    .local v0, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 48
    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 51
    .local v1, l:J
    ushr-long v3, v1, v5

    xor-long/2addr v3, v1

    long-to-int v3, v3

    add-int/lit8 v0, v3, 0x1f

    .line 52
    .local v0, i:I
    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 53
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v5

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 54
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lat/lng: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 40
    return-void
.end method
