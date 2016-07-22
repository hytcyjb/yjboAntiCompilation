.class public Lcom/didi/beatles/common/alarm/BtsCommonAlarmManager;
.super Ljava/lang/Object;
.source "BtsCommonAlarmManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDriverAlarm(Landroid/os/Handler;)V
    .locals 3
    .parameter "mHandler"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.countdown.for_going"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {p0}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setCountDownHandler(Landroid/os/Handler;)V

    .line 65
    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 66
    return-void
.end method

.method public static startOrderPayStatusAlarm(Landroid/os/Handler;J)V
    .locals 3
    .parameter "mHandler"
    .parameter "repeatTime"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.order.paystatus.lunxun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-static {p0}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setOrderPayStateHandler(Landroid/os/Handler;)V

    .line 34
    invoke-static {v0, p1, p2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method public static startPassengerAlarm(Landroid/os/Handler;J)V
    .locals 3
    .parameter "mHandler"
    .parameter "repeatTime"

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.passenger.lunxun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {p0}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setPassengerOrderStateHandler(Landroid/os/Handler;)V

    .line 21
    invoke-static {v0, p1, p2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method public static stopDriverAlarm()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.countdown.for_going"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setPassengerOrderStateHandler(Landroid/os/Handler;)V

    .line 75
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static stopOrderPayStatusAlarm()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.order.paystatus.lunxun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setPassengerOrderStateHandler(Landroid/os/Handler;)V

    .line 44
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public static stopPassengerAlarm()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts.action.passenger.lunxun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmReceiver;->setPassengerOrderStateHandler(Landroid/os/Handler;)V

    .line 54
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
