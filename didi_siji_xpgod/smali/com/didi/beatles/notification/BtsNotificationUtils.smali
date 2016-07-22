.class public Lcom/didi/beatles/notification/BtsNotificationUtils;
.super Ljava/lang/Object;
.source "BtsNotificationUtils.java"


# static fields
.field public static final BTS_PUSH_TYPE_GETUI:I = 0x3

.field public static final BTS_PUSH_TYPE_IM:I = 0x1

.field public static final BTS_PUSH_TYPE_XIAOMI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancleAllNotification()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 39
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 40
    return-void
.end method

.method private static notifyNotification(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "redirect"
    .parameter "intent"

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v7, v8

    .line 109
    .local v7, unique_id:I
    const/high16 v8, 0x800

    invoke-static {p0, v7, p2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 111
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0201c4

    .line 112
    .local v2, iconResid:I
    const v5, 0x7f0201c4

    .line 113
    .local v5, notificationId:I
    const-string v6, "\u6ef4\u6ef4\u6253\u8f66"

    .line 114
    .local v6, title:Ljava/lang/String;
    const v8, 0x7f0b0391

    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, content:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p1, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v8

    iget v5, v8, Lcom/didi/common/base/BaseApplication;->notificationId:I

    .end local v5           #notificationId:I
    add-int/lit8 v9, v5, 0x1

    iput v9, v8, Lcom/didi/common/base/BaseApplication;->notificationId:I

    .line 118
    .restart local v5       #notificationId:I
    iget-object v6, p1, Lcom/didi/beatles/notification/Redirect;->title:Ljava/lang/String;

    .line 120
    :cond_0
    new-instance v4, Landroid/app/Notification;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v2, v0, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 122
    .local v4, notif:Landroid/app/Notification;
    invoke-virtual {v4, p0, v6, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 124
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 127
    iget v8, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/app/Notification;->defaults:I

    .line 131
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 132
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    return-void
.end method

.method public static processExtraData(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;)V
    .locals 4
    .parameter "context"
    .parameter "redirect"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/didi/beatles/notification/Redirect;->getActionActivity()Ljava/lang/Class;

    move-result-object v1

    .line 137
    .local v1, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 138
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setOnPushOpenBeatles(Z)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->oid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "ORDER_UI_PARAM_STATUS"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v2, "ORDER_UI_PARAM_SUBSTATUS"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getSubStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v2, "ORDER_UI_PARAM_ROUTE_ID"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->roadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "from"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static showNotifycation(Landroid/content/Context;Lcom/didi/beatles/model/order/BtsSessionOrder;)V
    .locals 3
    .parameter "context"
    .parameter "btsSessionOrder"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "session_id"

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsSessionOrder;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "session_title"

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsSessionOrder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/didi/beatles/notification/BtsNotificationUtils;->notifyNotification(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method private static showNotifycation(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;)V
    .locals 4
    .parameter "context"
    .parameter "redirect"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-static {p0, v2}, Lcom/didi/common/util/Utils;->isActivityInRunningList(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/didi/beatles/notification/Redirect;->getActionActivity()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->oid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "ORDER_UI_PARAM_STATUS"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v2, "ORDER_UI_PARAM_SUBSTATUS"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getSubStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v2, "ORDER_UI_PARAM_ROUTE_ID"

    iget-object v3, p1, Lcom/didi/beatles/notification/Redirect;->roadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "from"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .end local v1           #target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-static {p0, p1, v0}, Lcom/didi/beatles/notification/BtsNotificationUtils;->notifyNotification(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;Landroid/content/Intent;)V

    .line 95
    :cond_1
    return-void

    .line 87
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v2, "notification_data"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static showPushNotice(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 8
    .parameter "context"
    .parameter "btsPushOrderStatus"

    .prologue
    .line 43
    invoke-static {p1}, Lcom/didi/beatles/notification/Redirect;->buildRedirect(Ljava/lang/Object;)Lcom/didi/beatles/notification/Redirect;

    move-result-object v5

    .line 44
    .local v5, redirect:Lcom/didi/beatles/notification/Redirect;
    iget v4, v5, Lcom/didi/beatles/notification/Redirect;->pushType:I

    .line 45
    .local v4, push_type:I
    iget-boolean v2, v5, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    .line 46
    .local v2, isShowNotify:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 48
    const-string v6, "getui_pushstatisics"

    iget-object v7, v5, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    iget-object v6, v5, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    sget-object v7, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_START:Lcom/didi/beatles/model/order/BtsOrderStatus;

    if-ne v6, v7, :cond_2

    .line 53
    const-class v6, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-static {p0, v6}, Lcom/didi/common/util/Utils;->isActivityInRunningList(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    const/4 v2, 0x0

    .line 56
    :cond_1
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 58
    :cond_2
    invoke-static {}, Lcom/didi/common/util/Utils;->isRunningForeground()Z

    move-result v1

    .line 59
    .local v1, isRunningForegrounp:Z
    if-eqz v1, :cond_3

    if-nez v2, :cond_6

    .line 60
    :cond_3
    invoke-static {p0, v5}, Lcom/didi/beatles/notification/BtsNotificationUtils;->showNotifycation(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;)V

    .line 69
    :cond_4
    :goto_1
    return-void

    .line 49
    .end local v1           #isRunningForegrounp:Z
    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 50
    const-string v6, "xiaomi_pushstatisics"

    iget-object v7, v5, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .restart local v1       #isRunningForegrounp:Z
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_8

    const/4 v0, 0x1

    .line 63
    .local v0, isBTSBusiness:Z
    :goto_2
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->isTaxiOrCarOrder()Z

    move-result v3

    .line 64
    .local v3, isTaxiOrCarOrderFragment:Z
    if-nez v0, :cond_7

    if-nez v3, :cond_4

    .line 65
    :cond_7
    invoke-static {v5}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->startMe(Lcom/didi/beatles/notification/Redirect;)V

    goto :goto_1

    .line 62
    .end local v0           #isBTSBusiness:Z
    .end local v3           #isTaxiOrCarOrderFragment:Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method
