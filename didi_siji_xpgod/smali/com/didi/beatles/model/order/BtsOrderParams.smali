.class public Lcom/didi/beatles/model/order/BtsOrderParams;
.super Ljava/lang/Object;
.source "BtsOrderParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endAddress:Lcom/didi/common/model/Address;

.field private extraInfo:Ljava/lang/String;

.field private fromAdress:Ljava/lang/String;

.field private fromId:Ljava/lang/String;

.field private fromLat:Ljava/lang/String;

.field private fromLng:Ljava/lang/String;

.field private fromName:Ljava/lang/String;

.field public old_oid:Ljava/lang/String;

.field private setupTime:Ljava/lang/String;

.field private setupTimeBackup:Ljava/lang/String;

.field public setupTimeStamp:J

.field private startAddress:Lcom/didi/common/model/Address;

.field private toAddress:Ljava/lang/String;

.field private toId:Ljava/lang/String;

.field private toLat:Ljava/lang/String;

.field private toLng:Ljava/lang/String;

.field private toName:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 21
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    return-void
.end method

.method public static buildBtsOrderParams(Lcom/didi/beatles/model/order/BtsOrderPassenger;)Lcom/didi/beatles/model/order/BtsOrderParams;
    .locals 4
    .parameter "btsOrderPassenger"

    .prologue
    .line 222
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-direct {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;-><init>()V

    .line 223
    .local v0, btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_area_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_area_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_address:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->old_oid:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->text_setup_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTime:Ljava/lang/String;

    .line 235
    return-object v0
.end method

.method public static buildBtsOrderParams(Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)Lcom/didi/beatles/model/order/BtsOrderParams;
    .locals 2
    .parameter "btsOrderPassengerPending"

    .prologue
    .line 206
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-direct {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;-><init>()V

    .line 207
    .local v0, btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_city_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_city_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_address:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->old_oid:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->text_setup_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTime:Ljava/lang/String;

    .line 219
    return-object v0
.end method


# virtual methods
.method public getEndAddress()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-nez v1, :cond_0

    .line 190
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 191
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 198
    .end local v0           #address:Lcom/didi/common/model/Address;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    goto :goto_0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 103
    :cond_0
    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCityIdByCity(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 107
    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 109
    :cond_2
    const-string v0, "-1"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromLat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromLng()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSetupTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSetupTimeBackup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTimeBackup:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAddress()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    if-nez v1, :cond_0

    .line 172
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 173
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromName:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromLng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromAdress:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 180
    .end local v0           #address:Lcom/didi/common/model/Address;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    goto :goto_0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 86
    :cond_0
    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCityIdByCity(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 90
    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 92
    :cond_2
    const-string v0, "-1"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToLat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLat:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToLng()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toLng:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->toName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setEndAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endAddress"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->endAddress:Lcom/didi/common/model/Address;

    .line 203
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "extraInfo"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->extraInfo:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0
    .parameter "fromId"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->fromId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSetupTime(J)V
    .locals 2
    .parameter "setupTimeMs"

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTimeStamp:J

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/didi/common/util/Utils;->btsformatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTime:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setSetupTimeBackup(Ljava/lang/String;)V
    .locals 0
    .parameter "setupTimeBackup"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->setupTimeBackup:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setStartAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startAddress"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->startAddress:Lcom/didi/common/model/Address;

    .line 186
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->token:Ljava/lang/String;

    .line 80
    return-void
.end method
