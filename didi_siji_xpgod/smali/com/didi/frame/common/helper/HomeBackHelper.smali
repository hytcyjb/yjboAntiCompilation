.class public Lcom/didi/frame/common/helper/HomeBackHelper;
.super Ljava/lang/Object;
.source "HomeBackHelper.java"


# static fields
.field private static mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAvalible()Z
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    .line 39
    .local v0, mgr:Lcom/didi/frame/FragmentMgr;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForResponseFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isConfirmFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isResendFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForArrivalFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static startHomeAlarm(I)V
    .locals 5
    .parameter "minutes"

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/frame/common/helper/HomeBackHelper;->isAvalible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    .line 25
    sget-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "home_back_process_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    sget-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    sget-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/didi/common/alarm/CommonAlarmManager;->setOnceAlarm(Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method public static stopHomeAlarm()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/common/helper/HomeBackHelper;->mIntent:Landroid/content/Intent;

    .line 35
    return-void
.end method
