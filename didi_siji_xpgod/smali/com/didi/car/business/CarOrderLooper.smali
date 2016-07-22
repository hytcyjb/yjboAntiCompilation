.class public Lcom/didi/car/business/CarOrderLooper;
.super Lcom/didi/frame/business/looper/OrderLooper;
.source "CarOrderLooper.java"


# static fields
.field private static MAX_COUNT_DOWN:I = 0x0

.field private static MIN_FIVE:I = 0x0

.field private static MIN_TEN:I = 0x0

.field private static final PRECISION:I = 0x3e8

.field private static final REPEAT_CHECK_ANSWER:I = 0x1

.field private static final REPEAT_STATE_HANLDER:I = 0x2

.field private static instance:Lcom/didi/car/business/CarOrderLooper;


# instance fields
.field private addPrice:I

.field private cancelOrGuideShow:Z

.field private endPart:Ljava/lang/String;

.field private isHandStop:Z

.field private isReadyResend:Z

.field private listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mRecoveryTime:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private order:Lcom/didi/car/model/CarOrder;

.field private pushCarNum:I

.field private secondSpend:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    .line 55
    sput v0, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    .line 56
    sput v0, Lcom/didi/car/business/CarOrderLooper;->MIN_FIVE:I

    .line 57
    const/16 v0, 0x258

    sput v0, Lcom/didi/car/business/CarOrderLooper;->MIN_TEN:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/didi/frame/business/looper/OrderLooper;-><init>()V

    .line 39
    iput v1, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    .line 40
    iput v1, p0, Lcom/didi/car/business/CarOrderLooper;->addPrice:I

    .line 43
    iput-boolean v0, p0, Lcom/didi/car/business/CarOrderLooper;->cancelOrGuideShow:Z

    .line 49
    iput-object v2, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    .line 51
    iput-object v2, p0, Lcom/didi/car/business/CarOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 59
    iput v0, p0, Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I

    .line 61
    iput v0, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z

    .line 139
    new-instance v0, Lcom/didi/car/business/CarOrderLooper$1;

    invoke-direct {v0, p0}, Lcom/didi/car/business/CarOrderLooper$1;-><init>(Lcom/didi/car/business/CarOrderLooper;)V

    iput-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/business/CarOrderLooper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->addPrice:I

    return v0
.end method

.method static synthetic access$1010(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->addPrice:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/didi/car/business/CarOrderLooper;->addPrice:I

    return v0
.end method

.method static synthetic access$1100(Lcom/didi/car/business/CarOrderLooper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->endPart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/car/business/CarOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I

    return p1
.end method

.method static synthetic access$200(Lcom/didi/car/business/CarOrderLooper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/didi/car/business/CarOrderLooper;->doGetStateThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/business/CarOrderLooper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/car/business/CarOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    return v0
.end method

.method static synthetic access$600(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/car/business/CarOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    return v0
.end method

.method static synthetic access$902(Lcom/didi/car/business/CarOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    return p1
.end method

.method private doGetStateThread()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/car/business/CarOrderLooper$2;

    invoke-direct {v1, p0}, Lcom/didi/car/business/CarOrderLooper$2;-><init>(Lcom/didi/car/business/CarOrderLooper;)V

    const-wide/16 v2, 0x36b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method

.method private doLoop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    .line 161
    iput-boolean v3, p0, Lcom/didi/car/business/CarOrderLooper;->cancelOrGuideShow:Z

    .line 162
    iput-boolean v3, p0, Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z

    .line 163
    invoke-direct {p0}, Lcom/didi/car/business/CarOrderLooper;->startAlarm()V

    .line 164
    invoke-direct {p0}, Lcom/didi/car/business/CarOrderLooper;->startTimerDown()V

    .line 165
    invoke-direct {p0}, Lcom/didi/car/business/CarOrderLooper;->doGetStateThread()V

    .line 166
    return-void
.end method

.method public static getInstance()Lcom/didi/car/business/CarOrderLooper;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/didi/car/business/CarOrderLooper;->instance:Lcom/didi/car/business/CarOrderLooper;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/didi/car/business/CarOrderLooper;

    invoke-direct {v0}, Lcom/didi/car/business/CarOrderLooper;-><init>()V

    sput-object v0, Lcom/didi/car/business/CarOrderLooper;->instance:Lcom/didi/car/business/CarOrderLooper;

    .line 73
    :cond_0
    sget-object v0, Lcom/didi/car/business/CarOrderLooper;->instance:Lcom/didi/car/business/CarOrderLooper;

    return-object v0
.end method

.method private startAlarm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_2

    .line 203
    sget v1, Lcom/didi/car/business/CarOrderLooper;->MIN_TEN:I

    sput v1, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    iget-boolean v1, v1, Lcom/didi/car/model/CarOrder;->isFromRecovery:Z

    if-eqz v1, :cond_3

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    iget-wide v3, v3, Lcom/didi/car/model/CarOrder;->createTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    .line 211
    iget v1, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    sget v2, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    if-gez v1, :cond_1

    .line 212
    :cond_0
    iput v5, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    .line 214
    :cond_1
    sget v1, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    iget v2, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    sub-int/2addr v1, v2

    sput v1, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    iput-boolean v5, v1, Lcom/didi/car/model/CarOrder;->isFromRecovery:Z

    .line 220
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 221
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v2, "action_repeat_check_answer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v2, "msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCarConfigOrderStatus()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 227
    return-void

    .line 205
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    sget v1, Lcom/didi/car/business/CarOrderLooper;->MIN_FIVE:I

    sput v1, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    goto :goto_0

    .line 216
    :cond_3
    iput v5, p0, Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I

    goto :goto_1
.end method

.method private startTimerDown()V
    .locals 6

    .prologue
    .line 236
    new-instance v0, Lcom/didi/car/business/CarOrderLooper$3;

    sget v1, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/car/business/CarOrderLooper$3;-><init>(Lcom/didi/car/business/CarOrderLooper;JJ)V

    iput-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 293
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 294
    return-void
.end method


# virtual methods
.method protected checkGuide()V
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget-boolean v0, v2, Lcom/didi/car/model/CarGuideFlag;->isShowTip4TimeOut:Z

    .line 189
    .local v0, isshowtip:Z
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget v1, v2, Lcom/didi/car/model/CarGuideFlag;->guide_for_taxi_wait_time:I

    .line 190
    .local v1, time:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isshowtip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 192
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I

    if-ne v1, v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/didi/car/business/CarOrderLooper;->cancelOrGuideShow:Z

    if-nez v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v2}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGuide()V

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/car/business/CarOrderLooper;->cancelOrGuideShow:Z

    goto :goto_0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPushCarNum()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I

    return v0
.end method

.method public getSendable()Lcom/didi/frame/Sendable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method public isReadyResend()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/didi/car/business/CarOrderLooper;->isReadyResend:Z

    return v0
.end method

.method public render()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    .line 137
    return-void
.end method

.method public setPushCarNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 114
    iput p1, p0, Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I

    .line 115
    return-void
.end method

.method public setResend(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/didi/car/business/CarOrderLooper;->isReadyResend:Z

    .line 133
    return-void
.end method

.method protected startLoop()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    iput-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    .line 79
    invoke-direct {p0}, Lcom/didi/car/business/CarOrderLooper;->doLoop()V

    .line 80
    return-void
.end method

.method protected stopLoop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    const-string v0, "LoopStopCar"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    iput-boolean v2, p0, Lcom/didi/car/business/CarOrderLooper;->cancelOrGuideShow:Z

    .line 87
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->defaultLocationMargin()V

    .line 88
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 90
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_0
    iput v1, p0, Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I

    .line 94
    iput-boolean v1, p0, Lcom/didi/car/business/CarOrderLooper;->isReadyResend:Z

    .line 95
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onStop()V

    .line 98
    :cond_1
    iput-boolean v2, p0, Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z

    .line 99
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper;->order:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setUnSent()V

    .line 100
    sget v0, Lcom/didi/car/business/CarOrderLooper;->MAX_COUNT_DOWN:I

    iput v0, p0, Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I

    .line 101
    return-void
.end method

.method public updateCarEnd(Ljava/lang/String;)V
    .locals 2
    .parameter "end"

    .prologue
    .line 230
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    :goto_0
    iput v0, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    iput v0, p0, Lcom/didi/car/business/CarOrderLooper;->addPrice:I

    .line 231
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper;->endPart:Ljava/lang/String;

    .line 232
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/didi/car/business/CarOrderLooper;->secondSpend:I

    goto :goto_0
.end method
