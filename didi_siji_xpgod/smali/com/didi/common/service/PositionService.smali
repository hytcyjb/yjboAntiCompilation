.class public Lcom/didi/common/service/PositionService;
.super Landroid/app/Service;
.source "PositionService.java"


# static fields
.field public static final KEY_BUSINESS_ID:Ljava/lang/String; = "business"

.field public static final KEY_ORDER_ID:Ljava/lang/String; = "oid"

.field private static final SERVICE_MARK_POSITION_SENDING_3S:I = 0x1

.field private static final SERVICE_MARK_POSOTION_SENDING_40S:I = 0x2


# instance fields
.field private isCarSend:Z

.field private m3SecondsTimes:I

.field private m40SecondsTimes:I

.field private mHandler:Landroid/os/Handler;

.field private mOid:Ljava/lang/String;

.field private mPositionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/service/PositionService;->isCarSend:Z

    .line 43
    new-instance v0, Lcom/didi/common/service/PositionService$1;

    invoke-direct {v0, p0}, Lcom/didi/common/service/PositionService$1;-><init>(Lcom/didi/common/service/PositionService;)V

    iput-object v0, p0, Lcom/didi/common/service/PositionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static doPositionSend(Ljava/lang/String;Z)V
    .locals 3
    .parameter "oid"
    .parameter "isCarSend"

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPositionSend oid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCarSend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    sget-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasPaidOff:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/didi/car/helper/CarPushHelper;->sendLocation(ZI)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {v2}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(Z)V

    goto :goto_0
.end method

.method private initPositionSendAlarm(Ljava/lang/String;II)V
    .locals 5
    .parameter "action"
    .parameter "what"
    .parameter "duration"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mHandler:Landroid/os/Handler;

    .line 78
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 80
    .local v2, msg:Landroid/os/Message;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setPositionSendHandler(Landroid/os/Handler;)V

    .line 85
    int-to-long v3, p3

    invoke-static {v1, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 86
    iput-object v1, p0, Lcom/didi/common/service/PositionService;->mPositionIntent:Landroid/content/Intent;

    .line 87
    return-void
.end method


# virtual methods
.method protected do3SPositionSend()V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/didi/common/service/PositionService;->m3SecondsTimes:I

    if-lez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/didi/common/service/PositionService;->m3SecondsTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/didi/common/service/PositionService;->m3SecondsTimes:I

    .line 92
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mOid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/didi/common/service/PositionService;->isCarSend:Z

    invoke-static {v0, v1}, Lcom/didi/common/service/PositionService;->doPositionSend(Ljava/lang/String;Z)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mPositionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mPositionIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 97
    :cond_1
    const-string v0, "send_position_40s"

    const/4 v1, 0x2

    const v2, 0x9c40

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/common/service/PositionService;->initPositionSendAlarm(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected do40SPositionSend()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/didi/common/service/PositionService;->m40SecondsTimes:I

    if-lez v0, :cond_0

    .line 103
    iget v0, p0, Lcom/didi/common/service/PositionService;->m40SecondsTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/didi/common/service/PositionService;->m40SecondsTimes:I

    .line 104
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mOid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/didi/common/service/PositionService;->isCarSend:Z

    invoke-static {v0, v1}, Lcom/didi/common/service/PositionService;->doPositionSend(Ljava/lang/String;Z)V

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mPositionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/didi/common/service/PositionService;->mPositionIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/service/PositionService;->stopSelf()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 62
    const/16 v0, 0xc8

    iput v0, p0, Lcom/didi/common/service/PositionService;->m3SecondsTimes:I

    .line 63
    const/16 v0, 0x16

    iput v0, p0, Lcom/didi/common/service/PositionService;->m40SecondsTimes:I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v0, "oid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/service/PositionService;->mOid:Ljava/lang/String;

    .line 66
    const-string v0, "business"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/common/service/PositionService;->isCarSend:Z

    .line 68
    :cond_0
    const-string v0, "send_position_3s"

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/common/service/PositionService;->initPositionSendAlarm(Ljava/lang/String;II)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
