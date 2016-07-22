.class public Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtsCommonAlarmReceiver.java"


# static fields
.field public static final BTS_ACTION_COUNTDOWN_FOR_GOING:Ljava/lang/String; = "bts.action.countdown.for_going"

.field public static final BTS_ACTION_COUNTDOWN_INTERVAL:J = 0xea60L

.field public static final BTS_ACTION_ORDER_PAY_STATUS_LUNXUN:Ljava/lang/String; = "bts.action.order.paystatus.lunxun"

.field public static final BTS_ACTION_PASSENGER_COUNTDOWN_FOR_ORDER_STATE_INTERVAL:J = 0x3a98L

.field public static final BTS_ACTION_PASSENGER_LUNXUN:Ljava/lang/String; = "bts.action.passenger.lunxun"

.field private static mHanderForPassenger:Landroid/os/Handler;

.field private static mHandlerCountdownForGoing:Landroid/os/Handler;

.field private static mHandlerForPayStatus:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerCountdownForGoing:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setCountDownHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "mHandler"

    .prologue
    .line 73
    sput-object p0, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerCountdownForGoing:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public static setOrderPayStateHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 80
    sput-object p0, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerForPayStatus:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public static setPassengerOrderStateHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 77
    sput-object p0, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHanderForPassenger:Landroid/os/Handler;

    .line 78
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v3, "bts.action.countdown.for_going"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerCountdownForGoing:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "left_minute"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, leftMinute:I
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerCountdownForGoing:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 53
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x20

    iput v3, v2, Landroid/os/Message;->what:I

    .line 54
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 55
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerCountdownForGoing:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    .end local v1           #leftMinute:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v3, "bts.action.passenger.lunxun"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHanderForPassenger:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 59
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHanderForPassenger:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 60
    .restart local v2       #msg:Landroid/os/Message;
    const/16 v3, 0x21

    iput v3, v2, Landroid/os/Message;->what:I

    .line 61
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHanderForPassenger:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 63
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    const-string v3, "BTS_ACTION_ORDER_PAY_STATUS_LUNXUN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerForPayStatus:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerForPayStatus:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 66
    .restart local v2       #msg:Landroid/os/Message;
    const/16 v3, 0x22

    iput v3, v2, Landroid/os/Message;->what:I

    .line 67
    sget-object v3, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->mHandlerForPayStatus:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
