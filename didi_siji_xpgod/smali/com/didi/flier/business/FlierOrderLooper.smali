.class public Lcom/didi/flier/business/FlierOrderLooper;
.super Lcom/didi/frame/business/looper/OrderLooper;
.source "FlierOrderLooper.java"


# static fields
.field private static MAX_COUNT_DOWN:I = 0x0

.field private static MIN_FIVE:I = 0x0

.field private static MIN_TEN:I = 0x0

.field private static final PRECISION:I = 0x3e8

.field private static final REPEAT_CHECK_ANSWER:I = 0x1

.field private static final REPEAT_STATE_HANLDER:I = 0x2

.field private static instance:Lcom/didi/flier/business/FlierOrderLooper;


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

.field private order:Lcom/didi/flier/model/FlierOrder;

.field private pushCarNum:I

.field private secondSpend:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    .line 53
    sput v0, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    .line 54
    sput v0, Lcom/didi/flier/business/FlierOrderLooper;->MIN_FIVE:I

    .line 55
    const/16 v0, 0x258

    sput v0, Lcom/didi/flier/business/FlierOrderLooper;->MIN_TEN:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/didi/frame/business/looper/OrderLooper;-><init>()V

    .line 37
    iput v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->secondSpend:I

    .line 38
    iput v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->addPrice:I

    .line 41
    iput-boolean v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->cancelOrGuideShow:Z

    .line 47
    iput-object v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    .line 49
    iput-object v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 57
    iput v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I

    .line 59
    iput v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z

    .line 136
    new-instance v0, Lcom/didi/flier/business/FlierOrderLooper$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/business/FlierOrderLooper$1;-><init>(Lcom/didi/flier/business/FlierOrderLooper;)V

    iput-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/flier/business/FlierOrderLooper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/didi/flier/business/FlierOrderLooper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/flier/business/FlierOrderLooper;->doGetStateThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/flier/business/FlierOrderLooper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/flier/business/FlierOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    return v0
.end method

.method static synthetic access$600(Lcom/didi/flier/business/FlierOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/flier/business/FlierOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/didi/flier/business/FlierOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I

    return v0
.end method

.method static synthetic access$902(Lcom/didi/flier/business/FlierOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I

    return p1
.end method

.method private doGetStateThread()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/flier/business/FlierOrderLooper$2;

    invoke-direct {v1, p0}, Lcom/didi/flier/business/FlierOrderLooper$2;-><init>(Lcom/didi/flier/business/FlierOrderLooper;)V

    const-wide/16 v2, 0x36b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method private doLoop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    .line 158
    iput-boolean v3, p0, Lcom/didi/flier/business/FlierOrderLooper;->cancelOrGuideShow:Z

    .line 159
    iput-boolean v3, p0, Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z

    .line 160
    invoke-direct {p0}, Lcom/didi/flier/business/FlierOrderLooper;->startAlarm()V

    .line 161
    invoke-direct {p0}, Lcom/didi/flier/business/FlierOrderLooper;->startTimerDown()V

    .line 162
    invoke-direct {p0}, Lcom/didi/flier/business/FlierOrderLooper;->doGetStateThread()V

    .line 163
    return-void
.end method

.method public static getInstance()Lcom/didi/flier/business/FlierOrderLooper;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/didi/flier/business/FlierOrderLooper;->instance:Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/didi/flier/business/FlierOrderLooper;

    invoke-direct {v0}, Lcom/didi/flier/business/FlierOrderLooper;-><init>()V

    sput-object v0, Lcom/didi/flier/business/FlierOrderLooper;->instance:Lcom/didi/flier/business/FlierOrderLooper;

    .line 71
    :cond_0
    sget-object v0, Lcom/didi/flier/business/FlierOrderLooper;->instance:Lcom/didi/flier/business/FlierOrderLooper;

    return-object v0
.end method

.method private startAlarm()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_2

    .line 200
    sget v1, Lcom/didi/flier/business/FlierOrderLooper;->MIN_TEN:I

    sput v1, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    iget-boolean v1, v1, Lcom/didi/flier/model/FlierOrder;->isFromRecovery:Z

    if-eqz v1, :cond_3

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    iget-wide v3, v3, Lcom/didi/flier/model/FlierOrder;->createTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    .line 208
    iget v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    sget v2, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    if-gez v1, :cond_1

    .line 209
    :cond_0
    iput v5, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    .line 211
    :cond_1
    sget v1, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    iget v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    sub-int/2addr v1, v2

    sput v1, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    .line 215
    :goto_1
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    iput-boolean v5, v1, Lcom/didi/flier/model/FlierOrder;->isFromRecovery:Z

    .line 217
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 218
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v2, "action_repeat_check_answer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v2, "msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCarConfigOrderStatus()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 224
    return-void

    .line 202
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    sget v1, Lcom/didi/flier/business/FlierOrderLooper;->MIN_FIVE:I

    sput v1, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    goto :goto_0

    .line 213
    :cond_3
    iput v5, p0, Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I

    goto :goto_1
.end method

.method private startTimerDown()V
    .locals 6

    .prologue
    .line 233
    new-instance v0, Lcom/didi/flier/business/FlierOrderLooper$3;

    sget v1, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/flier/business/FlierOrderLooper$3;-><init>(Lcom/didi/flier/business/FlierOrderLooper;JJ)V

    iput-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 287
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 288
    return-void
.end method


# virtual methods
.method protected checkGuide()V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget-boolean v0, v2, Lcom/didi/car/model/CarGuideFlag;->isShowTip4TimeOut:Z

    .line 186
    .local v0, isshowtip:Z
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget v1, v2, Lcom/didi/car/model/CarGuideFlag;->guide_for_filter_wait_time:I

    .line 187
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

    .line 188
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

    .line 189
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I

    if-ne v1, v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->cancelOrGuideShow:Z

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v2}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGuide()V

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->cancelOrGuideShow:Z

    goto :goto_0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPushCarNum()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I

    return v0
.end method

.method public getSendable()Lcom/didi/frame/Sendable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    return-object v0
.end method

.method public isReadyResend()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->isReadyResend:Z

    return v0
.end method

.method public render()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    .line 134
    return-void
.end method

.method public setPushCarNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 111
    iput p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I

    .line 112
    return-void
.end method

.method public setResend(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->isReadyResend:Z

    .line 130
    return-void
.end method

.method protected startLoop()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    iput-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    .line 77
    invoke-direct {p0}, Lcom/didi/flier/business/FlierOrderLooper;->doLoop()V

    .line 78
    return-void
.end method

.method protected stopLoop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    const-string v0, "LoopStopCar"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->defaultLocationMargin()V

    .line 85
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 87
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 90
    :cond_0
    iput v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I

    .line 91
    iput-boolean v1, p0, Lcom/didi/flier/business/FlierOrderLooper;->isReadyResend:Z

    .line 92
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onStop()V

    .line 94
    :cond_1
    iput-boolean v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z

    .line 95
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->setUnSent()V

    .line 96
    sget v0, Lcom/didi/flier/business/FlierOrderLooper;->MAX_COUNT_DOWN:I

    iput v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I

    .line 97
    iput-boolean v2, p0, Lcom/didi/flier/business/FlierOrderLooper;->cancelOrGuideShow:Z

    .line 98
    return-void
.end method

.method public updateCarEnd(Ljava/lang/String;)V
    .locals 2
    .parameter "end"

    .prologue
    .line 227
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->secondSpend:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    :goto_0
    iput v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->secondSpend:I

    iput v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->addPrice:I

    .line 228
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper;->endPart:Ljava/lang/String;

    .line 229
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/didi/flier/business/FlierOrderLooper;->secondSpend:I

    goto :goto_0
.end method
