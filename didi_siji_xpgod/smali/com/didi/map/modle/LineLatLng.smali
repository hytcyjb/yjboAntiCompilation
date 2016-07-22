.class public Lcom/didi/map/modle/LineLatLng;
.super Lcom/didi/common/model/BaseObject;
.source "LineLatLng.java"


# static fields
.field private static final DIVISOR:I = 0x64

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public latlngList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    return-void
.end method

.method private parseCoors(Ljava/lang/String;)V
    .locals 9
    .parameter "coorstr"

    .prologue
    .line 35
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, cstr:[Ljava/lang/String;
    array-length v3, v1

    new-array v0, v3, [D

    .line 37
    .local v0, coors:[D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 38
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x2

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 41
    add-int/lit8 v3, v2, -0x2

    aget-wide v3, v0, v3

    aget-wide v5, v0, v2

    const-wide/high16 v7, 0x4059

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v0, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-direct {p0, v0}, Lcom/didi/map/modle/LineLatLng;->transToLatLng([D)V

    .line 44
    return-void
.end method

.method private transToLatLng([D)V
    .locals 6
    .parameter "coors"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 57
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 51
    if-eqz v0, :cond_2

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    .line 52
    :cond_2
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    add-int/lit8 v2, v0, 0x1

    aget-wide v2, p1, v2

    invoke-static {v2, v3}, Lcom/didi/soso/location/LocateLib;->serverYToLatitude(D)D

    move-result-wide v2

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lcom/didi/soso/location/LocateLib;->serverXToLongitude(D)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 53
    .local v1, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latlng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/didi/map/modle/LineLatLng;->latlngList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v1           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 27
    const-string v1, "coors"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, coorstr:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0, v0}, Lcom/didi/map/modle/LineLatLng;->parseCoors(Ljava/lang/String;)V

    goto :goto_0
.end method
