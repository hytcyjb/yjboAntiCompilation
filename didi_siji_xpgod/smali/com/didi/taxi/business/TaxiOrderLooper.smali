.class public Lcom/didi/taxi/business/TaxiOrderLooper;
.super Lcom/didi/frame/business/looper/OrderLooper;
.source "TaxiOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    }
.end annotation


# static fields
.field private static MAX_COUNT_DOWN:I = 0x0

.field private static MAX_TYPE_ONLYCARPOOL_NOT_MATCHED:I = 0x0

.field private static MIN_FIVE:I = 0x0

.field private static MIN_TEN:I = 0x0

.field private static final PRECISION:I = 0x3e8

.field private static final REPEAT_CHECK_ANSWER:I = 0x1

.field private static final REPEAT_STATE_HANLDER:I = 0x2

.field public static countDown:I

.field private static instance:Lcom/didi/taxi/business/TaxiOrderLooper;


# instance fields
.field private cancelOrGuideShow:Z

.field private isAlarmDo:Z

.field private isHandStop:Z

.field private isReadyResend:Z

.field isShowPriceStatus:Z

.field private listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

.field private mDoublePercentAddPrice:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mRecoveryTime:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private myTimer:Ljava/util/Timer;

.field private order:Lcom/didi/taxi/model/TaxiOrder;

.field private pushCarNum:I

.field private pushContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 60
    sput v1, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    .line 61
    sput v1, Lcom/didi/taxi/business/TaxiOrderLooper;->MIN_FIVE:I

    .line 62
    const/16 v0, 0x258

    sput v0, Lcom/didi/taxi/business/TaxiOrderLooper;->MIN_TEN:I

    .line 65
    const/16 v0, 0x708

    sput v0, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_TYPE_ONLYCARPOOL_NOT_MATCHED:I

    .line 76
    sput v1, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/didi/frame/business/looper/OrderLooper;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->cancelOrGuideShow:Z

    .line 54
    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    .line 56
    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 68
    iput v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mDoublePercentAddPrice:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;

    .line 81
    iput v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    .line 83
    iput-boolean v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/business/TaxiOrderLooper$1;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    .line 314
    iput-boolean v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isShowPriceStatus:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/business/TaxiOrderLooper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isAlarmDo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/business/TaxiOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    return v0
.end method

.method static synthetic access$102(Lcom/didi/taxi/business/TaxiOrderLooper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isAlarmDo:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/didi/taxi/business/TaxiOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I

    return p1
.end method

.method static synthetic access$1202(Lcom/didi/taxi/business/TaxiOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    return p1
.end method

.method static synthetic access$1300(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/didi/taxi/business/TaxiOrderLooper;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/util/TimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/didi/taxi/business/TaxiOrderLooper;->myTask()Ljava/util/TimerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/business/TaxiOrderLooper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/business/TaxiOrderLooper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/didi/taxi/business/TaxiOrderLooper;->doGetStateThread()V

    return-void
.end method

.method static synthetic access$402(Lcom/didi/taxi/business/TaxiOrderLooper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    return v0
.end method

.method static synthetic access$600(Lcom/didi/taxi/business/TaxiOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/taxi/business/TaxiOrderLooper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    return-object v0
.end method

.method private doGetStateThread()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/taxi/business/TaxiOrderLooper$2;

    invoke-direct {v1, p0}, Lcom/didi/taxi/business/TaxiOrderLooper$2;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void
.end method

.method private doLoop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z

    .line 230
    iput-boolean v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->cancelOrGuideShow:Z

    .line 231
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->highLocationMargin()V

    .line 232
    invoke-direct {p0, v1, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->startAlarm(ZI)V

    .line 233
    invoke-direct {p0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->startTimerDown(Z)V

    .line 234
    invoke-direct {p0}, Lcom/didi/taxi/business/TaxiOrderLooper;->doGetStateThread()V

    .line 235
    return-void
.end method

.method public static getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/didi/taxi/business/TaxiOrderLooper;->instance:Lcom/didi/taxi/business/TaxiOrderLooper;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-direct {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;-><init>()V

    sput-object v0, Lcom/didi/taxi/business/TaxiOrderLooper;->instance:Lcom/didi/taxi/business/TaxiOrderLooper;

    .line 98
    :cond_0
    sget-object v0, Lcom/didi/taxi/business/TaxiOrderLooper;->instance:Lcom/didi/taxi/business/TaxiOrderLooper;

    return-object v0
.end method

.method private myTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/business/TaxiOrderLooper$4;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V

    return-object v0
.end method

.method private startAlarm(ZI)V
    .locals 8
    .parameter "changeLifeCycle"
    .parameter "maxCountDown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v2, v3, :cond_5

    .line 258
    sget v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MIN_TEN:I

    sput v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    .line 271
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCreateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    .line 274
    iget v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    sget v3, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    if-gez v2, :cond_2

    .line 275
    :cond_1
    iput v6, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    .line 277
    :cond_2
    sget v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    iget v3, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    sub-int/2addr v2, v3

    sput v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    .line 282
    :goto_1
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2, v6}, Lcom/didi/taxi/model/TaxiOrder;->setFromRecovery(Z)V

    .line 284
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaxiOrderLooper--startAlarm-mHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, msg:Landroid/os/Message;
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    .line 288
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v3, "action_repeat_check_answer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v3, "msg"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    const-string v2, "poll_interval"

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, poll:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 294
    if-eqz p1, :cond_3

    .line 295
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 298
    :cond_3
    const-string v2, "Not Found"

    const-string v3, "poll_interval"

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "poll_interval"

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 300
    const-string v2, "TaxiOrderLooper--startAlarm-poll_interval:3"

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 305
    :goto_2
    return-void

    .line 260
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #poll:Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    .line 261
    sput p2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    goto/16 :goto_0

    .line 263
    :cond_6
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 264
    :cond_7
    sget v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MIN_FIVE:I

    sput v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    goto/16 :goto_0

    .line 265
    :cond_8
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 266
    sget v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_TYPE_ONLYCARPOOL_NOT_MATCHED:I

    sput v2, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    goto/16 :goto_0

    .line 279
    :cond_9
    iput v6, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I

    goto/16 :goto_1

    .line 302
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #poll:Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaxiOrderLooper--startAlarm-poll_interval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "poll_interval"

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    const-string v3, "poll_interval"

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    goto :goto_2
.end method

.method private startTimerDown(Z)V
    .locals 6
    .parameter "changeLifeCycle"

    .prologue
    .line 316
    const/16 v0, 0x12c

    sput v0, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 320
    :cond_0
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper$3;

    sget v1, Lcom/didi/taxi/business/TaxiOrderLooper;->MAX_COUNT_DOWN:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/taxi/business/TaxiOrderLooper$3;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper;JJ)V

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    .line 390
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 391
    return-void
.end method


# virtual methods
.method protected checkGuide()V
    .locals 4

    .prologue
    .line 394
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget-boolean v0, v2, Lcom/didi/car/model/CarGuideFlag;->isShowTip4TimeOut:Z

    .line 398
    .local v0, isshowtip:Z
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v2

    iget v1, v2, Lcom/didi/car/model/CarGuideFlag;->guideWaitTime:I

    .line 399
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

    .line 400
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

    .line 401
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    if-ne v1, v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->cancelOrGuideShow:Z

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v2}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGuide()V

    .line 404
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->cancelOrGuideShow:Z

    goto :goto_0
.end method

.method public getCountDown()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPushCarNum()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I

    return v0
.end method

.method public getPushContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    .line 149
    .local v1, order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 150
    .local v0, isBooking:Z
    :goto_0
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_2

    .line 151
    const v2, 0x7f0b0534

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    .line 156
    .end local v0           #isBooking:Z
    .end local v1           #order:Lcom/didi/taxi/model/TaxiOrder;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    return-object v2

    .line 149
    .restart local v1       #order:Lcom/didi/taxi/model/TaxiOrder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    .restart local v0       #isBooking:Z
    :cond_2
    const v2, 0x7f0b0533

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSendable()Lcom/didi/frame/Sendable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method public isReadyResend()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend:Z

    return v0
.end method

.method public render()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public restartOrderAlarmAndTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 309
    sget v0, Lcom/didi/taxi/business/TaxiOrderLooper;->MIN_TEN:I

    invoke-direct {p0, v1, v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->startAlarm(ZI)V

    .line 310
    invoke-direct {p0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->startTimerDown(Z)V

    .line 311
    return-void
.end method

.method public setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    .line 202
    return-void
.end method

.method public setPushCarNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 185
    iput p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I

    .line 186
    return-void
.end method

.method public setPushContent(Ljava/lang/String;)V
    .locals 1
    .parameter "pushContent"

    .prologue
    .line 160
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    .line 163
    :cond_0
    return-void
.end method

.method public setResend(Z)V
    .locals 0
    .parameter "isresend"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend:Z

    .line 194
    return-void
.end method

.method public setTwo100AddPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "addPrice"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mDoublePercentAddPrice:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public startLoop()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    .line 105
    invoke-direct {p0}, Lcom/didi/taxi/business/TaxiOrderLooper;->doLoop()V

    .line 106
    const-string v0, "TaxiOrderLooper--startLoop"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public stopLoop()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/taxi/business/TaxiOrderLooper;->stopLoopByReCall()V

    .line 113
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->setUnSent()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->cancelOrGuideShow:Z

    .line 115
    return-void
.end method

.method public stopLoopByReCall()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->defaultLocationMargin()V

    .line 119
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 120
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 122
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 128
    :cond_1
    iput v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I

    .line 129
    iput v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->mDoublePercentAddPrice:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;

    .line 132
    iput-boolean v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend:Z

    .line 133
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onStop()V

    .line 136
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z

    .line 138
    return-void
.end method
