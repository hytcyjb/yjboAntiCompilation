.class public Lcom/tencent/map/geolocation/TencentLocationUtils;
.super Ljava/lang/Object;
.source "TL"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static contains(Lcom/tencent/map/geolocation/TencentLocation;DLcom/tencent/map/geolocation/TencentLocation;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_1
    invoke-static {p0, p3}, Lcom/tencent/map/geolocation/TencentLocationUtils;->distanceBetween(Lcom/tencent/map/geolocation/TencentLocation;Lcom/tencent/map/geolocation/TencentLocation;)D

    move-result-wide v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static distanceBetween(DDDD)D
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static/range {p0 .. p7}, Lct/b$a;->a(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetween(Lcom/tencent/map/geolocation/TencentLocation;Lcom/tencent/map/geolocation/TencentLocation;)D
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 32
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_1
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lct/b$a;->a(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static isFromGps(Lcom/tencent/map/geolocation/TencentLocation;)Z
    .locals 2
    .parameter

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    const-string v0, "gps"

    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFromNetwork(Lcom/tencent/map/geolocation/TencentLocation;)Z
    .locals 2
    .parameter

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const-string v0, "network"

    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportGps(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_0
    invoke-static {}, Lct/cp;->a()Lct/cp;

    invoke-static {p0}, Lct/cp;->a(Landroid/content/Context;)I

    move-result v0

    .line 114
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
