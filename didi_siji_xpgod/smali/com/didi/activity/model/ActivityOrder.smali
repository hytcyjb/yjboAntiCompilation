.class public Lcom/didi/activity/model/ActivityOrder;
.super Lcom/didi/common/model/BaseObject;
.source "ActivityOrder.java"

# interfaces
.implements Lcom/didi/frame/Sendable;


# instance fields
.field private commonAttri:Lcom/didi/common/model/CommonAttributes;

.field private createTime:J

.field private driverCountNotified:I

.field private driverNum:I

.field private endPlace:Lcom/didi/common/model/Address;

.field private historyDistrict:Ljava/lang/String;

.field private isFromRecovery:Z

.field private isUseDepart:Z

.field private lastRemark:Ljava/lang/String;

.field private lastTip:I

.field private oid:Ljava/lang/String;

.field private overdraftOid:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private startPlace:Lcom/didi/common/model/Address;

.field private substatus:I

.field private timeout:Z

.field private tip:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 35
    iput v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    .line 38
    iput v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->historyDistrict:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/didi/activity/model/ActivityOrder;->substatus:I

    .line 59
    iput v1, p0, Lcom/didi/activity/model/ActivityOrder;->driverNum:I

    .line 61
    iput-boolean v1, p0, Lcom/didi/activity/model/ActivityOrder;->isFromRecovery:Z

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/activity/model/ActivityOrder;->createTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/activity/model/ActivityOrder;->setOid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 473
    const-string v0, ""

    .line 474
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 479
    const-string v0, ""

    .line 480
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommonAttri()Lcom/didi/common/model/CommonAttributes;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/didi/activity/model/ActivityOrder;->createTime:J

    return-wide v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 467
    const-string v0, ""

    .line 468
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDriverCountNotified()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->driverCountNotified:I

    return v0
.end method

.method public getDriverNum()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->driverNum:I

    return v0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLatDouble()D
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 443
    const-wide/16 v0, 0x0

    .line 444
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLngDouble()D
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 449
    const-wide/16 v0, 0x0

    .line 450
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getHistoryDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->historyDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()Lcom/didi/frame/business/InputType;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public getInputTypeInt()I
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v0

    .line 286
    .local v0, type:Lcom/didi/frame/business/InputType;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, -0x1

    .line 288
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/InputType;->getIndexValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLastRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTip()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public getOrderTypeInt()I
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 264
    .local v0, type:Lcom/didi/frame/business/OrderType;
    if-nez v0, :cond_0

    .line 265
    const/4 v1, -0x1

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    goto :goto_0
.end method

.method public getOverdraftOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLatDouble()D
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 431
    const-wide/16 v0, 0x0

    .line 432
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLngDouble()D
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 437
    const-wide/16 v0, 0x0

    .line 438
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getSubstatus()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->substatus:I

    return v0
.end method

.method public getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Lcom/didi/car/business/CarOrderTerminator;->getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;

    move-result-object v0

    return-object v0
.end method

.method public getTip()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    return v0
.end method

.method public getTipParam()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    goto :goto_0
.end method

.method public getTransportTime()J
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 237
    const-wide/16 v0, 0x0

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-wide v0, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public getUseDepart()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/didi/activity/model/ActivityOrder;->isUseDepart:Z

    return v0
.end method

.method public getVoiceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonAttributes;->getVoiceFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceTime()F
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 294
    const/high16 v0, -0x4080

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public hasAddressBeenSet()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBeenSent()Z
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasBeenSent : oid  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBooking()Z
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 366
    .local v0, type:Lcom/didi/frame/business/OrderType;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFromRecovery()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/didi/activity/model/ActivityOrder;->isFromRecovery:Z

    return v0
.end method

.method public isModified()Z
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->isTipModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeout()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/didi/activity/model/ActivityOrder;->timeout:Z

    return v0
.end method

.method public isTipModified()Z
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    const-string v5, "overdraftOid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->overdraftOid:Ljava/lang/String;

    .line 106
    const-string v5, "tip"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    .line 107
    const-string v5, "extraInfo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    .line 108
    const-string v5, "driverNum"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/activity/model/ActivityOrder;->driverCountNotified:I

    .line 109
    const-string v5, "timeout"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/didi/activity/model/ActivityOrder;->timeout:Z

    .line 110
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v5, :cond_0

    .line 111
    new-instance v5, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v5}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    iput-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 112
    :cond_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v3

    .line 113
    .local v3, transportTime:J
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide v3, v5, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 114
    const-string v5, "oid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/didi/activity/model/ActivityOrder;->setOid(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v8, "time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v8, "area"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 117
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v8, "isArrivedLimited"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    iput-boolean v6, v5, Lcom/didi/common/model/CommonAttributes;->isArrived:Z

    .line 118
    const-string v5, "status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, status:I
    if-gtz v2, :cond_1

    .line 120
    const-string v5, "status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    :cond_1
    iget-object v5, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput v2, v5, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 123
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 124
    .local v1, startPlace:Lcom/didi/common/model/Address;
    const-string v5, "fromName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 125
    const-string v5, "fromAddress"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 126
    const-string v5, "flng"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 127
    const-string v5, "flat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 130
    .local v0, endPlace:Lcom/didi/common/model/Address;
    const-string v5, "toName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 131
    const-string v5, "toAddress"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 132
    const-string v5, "tlng"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 133
    const-string v5, "tlat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, v1}, Lcom/didi/activity/model/ActivityOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/didi/activity/model/ActivityOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 138
    return-void

    .end local v0           #endPlace:Lcom/didi/common/model/Address;
    .end local v1           #startPlace:Lcom/didi/common/model/Address;
    .end local v2           #status:I
    .end local v3           #transportTime:J
    :cond_2
    move v5, v7

    .line 109
    goto/16 :goto_0

    .restart local v3       #transportTime:J
    :cond_3
    move v6, v7

    .line 117
    goto :goto_1
.end method

.method public retreiveLatestAddress()V
    .locals 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/didi/activity/model/ActivityOrder;->hasBeenSent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 494
    .local v1, startAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 495
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 497
    :cond_2
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    goto :goto_0
.end method

.method public setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V
    .locals 0
    .parameter "commonAttri"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 233
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/didi/activity/model/ActivityOrder;->createTime:J

    .line 346
    return-void
.end method

.method public setDriverCountNotified(I)V
    .locals 0
    .parameter "driverCountNotified"

    .prologue
    .line 227
    iput p1, p0, Lcom/didi/activity/model/ActivityOrder;->driverCountNotified:I

    .line 228
    return-void
.end method

.method public setDriverNum(I)V
    .locals 0
    .parameter "driverNum"

    .prologue
    .line 329
    iput p1, p0, Lcom/didi/activity/model/ActivityOrder;->driverNum:I

    .line 330
    return-void
.end method

.method public setEndPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endPlace"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 403
    return-void
.end method

.method public setFromRecovery(Z)V
    .locals 0
    .parameter "isFromRecovery"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/didi/activity/model/ActivityOrder;->isFromRecovery:Z

    .line 338
    return-void
.end method

.method public setHistoryDistrict(Ljava/lang/String;)V
    .locals 0
    .parameter "historyDistrict"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->historyDistrict:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setInputType(Lcom/didi/frame/business/InputType;)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public setLastRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "lastRemark"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setLastTip(I)V
    .locals 0
    .parameter "lastTip"

    .prologue
    .line 181
    iput p1, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    .line 182
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->oid:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setOrderType(Lcom/didi/frame/business/OrderType;)V
    .locals 1
    .parameter "orderType"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public setOverdraftOid(Ljava/lang/String;)V
    .locals 0
    .parameter "overdraftOid"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->overdraftOid:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1}, Lcom/didi/activity/model/ActivityOrder;->setOid(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setSendable(Lcom/didi/frame/Sendable;)V
    .locals 1
    .parameter "sendable"

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 92
    return-void
.end method

.method public setSent()V
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    iput v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    .line 356
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setStartPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startPlace"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 388
    return-void
.end method

.method public setSubstatus(I)V
    .locals 0
    .parameter "substatus"

    .prologue
    .line 99
    iput p1, p0, Lcom/didi/activity/model/ActivityOrder;->substatus:I

    .line 100
    return-void
.end method

.method public setTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/didi/activity/model/ActivityOrder;->timeout:Z

    .line 218
    return-void
.end method

.method public setTip(I)V
    .locals 0
    .parameter "tip"

    .prologue
    .line 158
    iput p1, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    .line 159
    return-void
.end method

.method public setTransportTime(J)V
    .locals 1
    .parameter "transportTime"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide p1, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public setUnSent()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setUseDepart(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/didi/activity/model/ActivityOrder;->isUseDepart:Z

    .line 511
    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVoiceTime(J)V
    .locals 2
    .parameter "voiceTime"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    long-to-float v1, p1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOrder{oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overdraftOid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->overdraftOid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->tip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->lastTip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRemark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->lastRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/activity/model/ActivityOrder;->timeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverCountNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->driverCountNotified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commonAttri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", historyDistrict=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->historyDistrict:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", substatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->substatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/activity/model/ActivityOrder;->driverNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromRecovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/activity/model/ActivityOrder;->isFromRecovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/activity/model/ActivityOrder;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUseDepart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/activity/model/ActivityOrder;->isUseDepart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/model/ActivityOrder;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
