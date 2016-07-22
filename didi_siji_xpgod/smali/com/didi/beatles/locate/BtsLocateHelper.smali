.class public Lcom/didi/beatles/locate/BtsLocateHelper;
.super Ljava/lang/Object;
.source "BtsLocateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccuracy()F
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public static getBearing()F
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getSpeed()F

    move-result v0

    return v0
.end method

.method public static getLat()D
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static getLatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLng()D
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLngString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProvider()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getProvider()I

    move-result v0

    return v0
.end method

.method public static getSpeed()F
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getSpeed()F

    move-result v0

    return v0
.end method
