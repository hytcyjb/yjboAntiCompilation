.class public Lcom/didi/frame/log/helper/HomeBackAppHelper;
.super Ljava/lang/Object;
.source "HomeBackAppHelper.java"


# static fields
.field private static final HOME_BACK_APP_DURATION:I = 0x2bf20

.field private static appInfo:Ljava/lang/StringBuffer;

.field private static isDo:Z

.field private static mIntent:Landroid/content/Intent;

.field private static startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNeed()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->isAction()Z

    move-result v6

    if-nez v6, :cond_1

    .line 129
    .local v2, send:Lcom/didi/frame/Sendable;
    :cond_0
    :goto_0
    return v4

    .line 109
    .end local v2           #send:Lcom/didi/frame/Sendable;
    :cond_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 111
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/FragmentMgr;->isWaitForArrivalFragment()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    .line 114
    .restart local v2       #send:Lcom/didi/frame/Sendable;
    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 117
    .local v0, bus:Lcom/didi/frame/business/Business;
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v6, :cond_3

    move-object v3, v2

    .line 118
    check-cast v3, Lcom/didi/taxi/model/TaxiOrder;

    .line 119
    .local v3, taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v6

    iget v6, v6, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 120
    goto :goto_0

    .line 122
    .end local v3           #taxi:Lcom/didi/taxi/model/TaxiOrder;
    :cond_3
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v0, v6, :cond_4

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v6, :cond_0

    .line 123
    :cond_4
    instance-of v6, v2, Lcom/didi/car/model/CarOrder;

    if-eqz v6, :cond_0

    move-object v1, v2

    .line 124
    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 125
    .local v1, car:Lcom/didi/car/model/CarOrder;
    iget v6, v1, Lcom/didi/car/model/CarOrder;->isPay:I

    if-nez v6, :cond_0

    move v4, v5

    .line 126
    goto :goto_0
.end method

.method public static isTimeOut()Z
    .locals 6

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    .local v2, now:J
    sget-wide v4, Lcom/didi/frame/log/helper/HomeBackAppHelper;->startTime:J

    sub-long v0, v2, v4

    .line 99
    .local v0, cha:J
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 100
    :cond_0
    const/4 v4, 0x1

    .line 102
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static logAppInfo()V
    .locals 6

    .prologue
    .line 76
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    if-nez v4, :cond_1

    .line 93
    .local v1, packageName:Ljava/lang/String;
    .local v3, topPackageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    .end local v1           #packageName:Ljava/lang/String;
    .end local v3           #topPackageName:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .restart local v1       #packageName:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/Utils;->getTopActivityPackegeName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3       #topPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 88
    sget-object v4, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    if-nez v4, :cond_2

    .line 89
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v4, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    .line 90
    :cond_2
    sget-object v4, Lcom/didi/common/helper/AppWatcherHelper$AppType;->OPEN:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/AppWatcherHelper;->splitAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, af:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppInfoString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    sget-object v4, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static start()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->isNeed()Z

    move-result v0

    .line 42
    .local v0, need:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfoString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-boolean v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->isDo:Z

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->isDo:Z

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    .line 49
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "home_back_app_log_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    const-wide/32 v2, 0x2bf20

    invoke-static {v1, v2, v3}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->startTime:J

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfoString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, info:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfoString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/didi/frame/log/helper/HomeBackAppHelper$1;

    invoke-direct {v1, v0}, Lcom/didi/frame/log/helper/HomeBackAppHelper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/didi/frame/log/helper/HomeBackAppHelper$1;->start()Lthread/Job;

    .line 67
    sput-object v3, Lcom/didi/frame/log/helper/HomeBackAppHelper;->appInfo:Ljava/lang/StringBuffer;

    .line 69
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->isDo:Z

    .line 70
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 72
    :cond_1
    sput-object v3, Lcom/didi/frame/log/helper/HomeBackAppHelper;->mIntent:Landroid/content/Intent;

    .line 73
    return-void
.end method
