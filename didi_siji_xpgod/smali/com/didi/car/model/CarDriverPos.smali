.class public Lcom/didi/car/model/CarDriverPos;
.super Lcom/didi/common/model/BaseObject;
.source "CarDriverPos.java"


# static fields
.field private static final serialVersionUID:J = 0x66a26ee50e28c119L


# instance fields
.field public arrivedTime:I

.field public distance:D

.field public distanceEnabled:Z

.field public lat:D

.field public lng:D

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 32
    const-string v0, "lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/car/model/CarDriverPos;->lng:D

    .line 33
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/car/model/CarDriverPos;->lat:D

    .line 34
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarDriverPos;->status:I

    .line 35
    const-string v0, "arrivedTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarDriverPos;->arrivedTime:I

    .line 36
    const-string v0, "distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/car/model/CarDriverPos;->distance:D

    .line 37
    const-string v0, "distanceEnabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/didi/car/model/CarDriverPos;->distanceEnabled:Z

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
