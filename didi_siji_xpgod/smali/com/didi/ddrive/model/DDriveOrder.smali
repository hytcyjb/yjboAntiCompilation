.class public Lcom/didi/ddrive/model/DDriveOrder;
.super Lcom/didi/common/model/BaseObject;
.source "DDriveOrder.java"

# interfaces
.implements Lcom/didi/frame/Sendable;


# instance fields
.field public bubbleInfo:Ljava/lang/String;

.field public cancelOrderTip:Ljava/lang/String;

.field public canceller:I

.field public carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

.field public carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

.field public channel:I

.field public closeTips:Ljava/lang/String;

.field public commonAttri:Lcom/didi/common/model/CommonAttributes;

.field public complaintContent:Ljava/lang/String;

.field public complaintState:I

.field public createTime:J

.field public ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

.field public did:J

.field public driver:Lcom/didi/ddrive/model/Driver;

.field public driverCountNotified:I

.field public driverLocation:Lcom/didi/common/model/Address;

.field public driverNum:I

.field public endPlace:Lcom/didi/common/model/Address;

.field public evaluateContent:Ljava/lang/String;

.field public evaluateMark:I

.field public evaluateScore:I

.field public feedback:I

.field public feedbackTips:Ljava/lang/String;

.field public feedbackTitle:Ljava/lang/String;

.field public historyDistrict:Ljava/lang/String;

.field public isCancel:I

.field public isFromRecovery:Z

.field public isPay:I

.field public isUseDepart:Z

.field public oid:J

.field public orderDetail:Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

.field public orderState:Lcom/didi/car/model/CarOrderState;

.field public overdraftOid:Ljava/lang/String;

.field public payState:Lcom/didi/ddrive/model/PayState;

.field public payType:I

.field public payed:D

.field public predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

.field public pushTips:Ljava/lang/String;

.field public redRecord:Lcom/didi/car/model/CarRedRecordInfo;

.field public share:Lcom/didi/car/model/CarPayShare;

.field public startPlace:Lcom/didi/common/model/Address;

.field public statusTitle:Ljava/lang/String;

.field public substatus:I

.field public timeout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 41
    sget-object v0, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    iput-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 45
    iput v1, p0, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->channel:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->historyDistrict:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->pushTips:Ljava/lang/String;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->bubbleInfo:Ljava/lang/String;

    .line 186
    iput v1, p0, Lcom/didi/ddrive/model/DDriveOrder;->substatus:I

    .line 188
    iput v1, p0, Lcom/didi/ddrive/model/DDriveOrder;->driverNum:I

    .line 190
    iput-boolean v1, p0, Lcom/didi/ddrive/model/DDriveOrder;->isFromRecovery:Z

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->createTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    goto :goto_0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 434
    const-string v0, ""

    .line 435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 440
    const-string v0, ""

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommonAttri()Lcom/didi/common/model/CommonAttributes;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    return-object v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 428
    const-string v0, ""

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLatDouble()D
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 404
    const-wide/16 v0, 0x0

    .line 405
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLngDouble()D
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 410
    const-wide/16 v0, 0x0

    .line 411
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getHistoryDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->historyDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()Lcom/didi/frame/business/InputType;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public getInputTypeInt()I
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v0

    .line 265
    .local v0, type:Lcom/didi/frame/business/InputType;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, -0x1

    .line 267
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/InputType;->getIndexValue()I

    move-result v1

    goto :goto_0
.end method

.method public getOid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderType()Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public getOrderTypeInt()I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 237
    .local v0, type:Lcom/didi/frame/business/OrderType;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, -0x1

    .line 239
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 489
    const-string v0, "didi"

    .line 490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLatDouble()D
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 392
    const-wide/16 v0, 0x0

    .line 393
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLngDouble()D
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 398
    const-wide/16 v0, 0x0

    .line 399
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/didi/car/business/CarOrderTerminator;->getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;

    move-result-object v0

    return-object v0
.end method

.method public getTransportTime()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-wide v0, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public getUseDepart()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->isUseDepart:Z

    return v0
.end method

.method public getVoiceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonAttributes;->getVoiceFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceTime()F
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 275
    const/high16 v0, -0x4080

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public hasAddressBeenSet()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

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
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasBeenSent : oid  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

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
    .line 323
    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 324
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

.method public isModified()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public retreiveLatestAddress()V
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/didi/ddrive/model/DDriveOrder;->hasBeenSent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 455
    .local v1, startAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 456
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 458
    :cond_1
    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 460
    :cond_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/ddrive/model/DDriveOrder;->isUseDepart:Z

    goto :goto_0
.end method

.method public setEndPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endPlace"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/didi/ddrive/model/DDriveOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 364
    return-void
.end method

.method public setHistoryDistrict(Ljava/lang/String;)V
    .locals 0
    .parameter "historyDistrict"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/didi/ddrive/model/DDriveOrder;->historyDistrict:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setInputType(Lcom/didi/frame/business/InputType;)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public setOrderType(Lcom/didi/frame/business/OrderType;)V
    .locals 1
    .parameter "orderType"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .parameter "sou"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStartPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startPlace"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/didi/ddrive/model/DDriveOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 350
    return-void
.end method

.method public setTransportTime(J)V
    .locals 1
    .parameter "transportTime"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide p1, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public setUseDepart(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/didi/ddrive/model/DDriveOrder;->isUseDepart:Z

    .line 473
    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVoiceTime(J)V
    .locals 2
    .parameter "voiceTime"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    long-to-float v1, p1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public updateDriverLocation(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 55
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->driverLocation:Lcom/didi/common/model/Address;

    .line 56
    iget-object v0, p0, Lcom/didi/ddrive/model/DDriveOrder;->driverLocation:Lcom/didi/common/model/Address;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 57
    return-void
.end method
