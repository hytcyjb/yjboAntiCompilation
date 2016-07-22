.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBoundsCreator;


# instance fields
.field private final a:I

.field public final northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public final southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBoundsCreator;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBoundsCreator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBoundsCreator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "latlng"
    .parameter "latlng1"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;B)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;B)V
    .locals 1
    .parameter "latlng"
    .parameter "latlng1"
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->a:I

    .line 59
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 60
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 61
    return-void
.end method

.method static a(DD)D
    .locals 2
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)Z
    .locals 6
    .parameter "d1"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static b(DD)D
    .locals 2
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 152
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static builder()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private static c(DD)D
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide v2, 0x4076800000000000L

    .line 108
    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private static d(DD)D
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide v2, 0x4076800000000000L

    .line 112
    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final contains(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Z
    .locals 7
    .parameter "latlng"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    move-object v0, p1

    .line 89
    .local v0, latlng1:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpg-double v5, v5, v3

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-direct {p0, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->a(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->CREATOR:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBoundsCreator;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    instance-of v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    if-nez v3, :cond_2

    move v1, v2

    .line 134
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 136
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    .line 137
    .local v0, latlngbounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final including(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    .locals 15
    .parameter "latlng"

    .prologue
    .line 93
    move-object/from16 v10, p1

    .line 94
    .local v10, latlng1:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v11, v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v13, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 95
    .local v0, d1:D
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v11, v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v13, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 96
    .local v2, d2:D
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 97
    .local v4, d3:D
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v6, v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 98
    .local v6, d4:D
    iget-wide v8, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 99
    .local v8, d5:D
    invoke-direct {p0, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->a(D)Z

    move-result v11

    if-nez v11, :cond_0

    .line 100
    invoke-static {v6, v7, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->c(DD)D

    move-result-wide v11

    invoke-static {v4, v5, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->d(DD)D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gez v11, :cond_1

    .line 101
    move-wide v6, v8

    .line 104
    :cond_0
    :goto_0
    new-instance v11, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    new-instance v12, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v12, v0, v1, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v13, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v13, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    return-object v11

    .line 103
    :cond_1
    move-wide v4, v8

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 76
    return-void
.end method
