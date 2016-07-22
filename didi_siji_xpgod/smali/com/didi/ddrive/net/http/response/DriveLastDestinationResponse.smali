.class public Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;
.super Ljava/lang/Object;
.source "DriveLastDestinationResponse.java"


# instance fields
.field private lat:D

.field private lng:D

.field private poiAddress:Ljava/lang/String;

.field private poiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lng:D

    return-wide v0
.end method

.method public getPoiAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiName:Ljava/lang/String;

    return-object v0
.end method

.method public setLat(D)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lat:D

    .line 33
    return-void
.end method

.method public setLng(D)V
    .locals 0
    .parameter "lng"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lng:D

    .line 41
    return-void
.end method

.method public setPoiAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "poiAddress"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiAddress:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0
    .parameter "poiName"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriveLastDestinationResponse [poiName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->poiAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/ddrive/net/http/response/DriveLastDestinationResponse;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
