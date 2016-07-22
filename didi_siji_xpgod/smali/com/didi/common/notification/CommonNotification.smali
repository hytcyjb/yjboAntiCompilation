.class public Lcom/didi/common/notification/CommonNotification;
.super Ljava/lang/Object;
.source "CommonNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification()V
    .locals 4

    .prologue
    .line 96
    const v0, 0x7f0201c4

    .line 97
    .local v0, notificationId:I
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 99
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    return-void
.end method

.method private static getContentView(Ljava/lang/String;Ljava/lang/String;J)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "title"
    .parameter "content"
    .parameter "time"

    .prologue
    .line 122
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300d5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v1, 0x7f0804a6

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    const v1, 0x7f0804a4

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f0804a5

    invoke-static {p2, p3}, Lcom/didi/common/util/TimeUtil;->formateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    return-object v0
.end method

.method private static getIntent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Landroid/app/PendingIntent;
    .locals 7
    .parameter "clz"
    .parameter "title"
    .parameter "content"
    .parameter "jsonObject"
    .parameter "showDialog"

    .prologue
    .line 136
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    if-eqz p4, :cond_1

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "is_push"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v4, "push_title"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "push_content"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 154
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    return-object v2

    .line 145
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    if-eqz p3, :cond_0

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "push_title"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "push_content"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, redirect:Ljava/lang/String;
    const-string v4, "push_redirectjsonobject"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Landroid/app/Notification;
    .locals 6
    .parameter "clz"
    .parameter "title"
    .parameter "content"
    .parameter "jsonObject"
    .parameter "showDialog"

    .prologue
    const/4 v5, 0x1

    .line 103
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lcom/didi/common/notification/CommonNotification;->getContentView(Ljava/lang/String;Ljava/lang/String;J)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0201c4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/common/notification/CommonNotification;->getIntent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 113
    .local v1, notification:Landroid/app/Notification;
    if-eqz p3, :cond_0

    .line 114
    const/4 v2, 0x3

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 116
    :cond_0
    return-object v1
.end method

.method public static notification()V
    .locals 10

    .prologue
    .line 38
    const-string v1, ""

    .local v1, company:Ljava/lang/String;
    const-string v0, ""

    .local v0, card:Ljava/lang/String;
    const-string v3, ""

    .line 39
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    sget-object v8, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v7, v8, :cond_1

    .line 40
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiOrder;

    .line 41
    .local v4, order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v7

    iget-object v1, v7, Lcom/didi/taxi/model/TaxiDriver;->company:Ljava/lang/String;

    .line 42
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v7

    iget-object v0, v7, Lcom/didi/taxi/model/TaxiDriver;->card:Ljava/lang/String;

    .line 43
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v7

    iget-object v3, v7, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    .line 53
    .end local v4           #order:Lcom/didi/taxi/model/TaxiOrder;
    :cond_0
    :goto_0
    const v7, 0x7f0b0577

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, prefix:Ljava/lang/String;
    const v7, 0x7f0b04f3

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, suffix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v2, content:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const v7, 0x7f0b022c

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/didi/frame/MainActivity;

    invoke-static {v7, v8, v9}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    .end local v2           #content:Ljava/lang/StringBuilder;
    .end local v5           #prefix:Ljava/lang/String;
    .end local v6           #suffix:Ljava/lang/String;
    :goto_1
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    sget-object v8, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v7, v8, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    sget-object v8, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v7, v8, :cond_3

    .line 45
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/car/model/CarOrder;

    .line 46
    .local v4, order:Lcom/didi/car/model/CarOrder;
    iget-object v7, v4, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    iget-object v1, v7, Lcom/didi/car/model/CarDriver;->carType:Ljava/lang/String;

    .line 47
    iget-object v7, v4, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    iget-object v0, v7, Lcom/didi/car/model/CarDriver;->card:Ljava/lang/String;

    .line 48
    iget-object v7, v4, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    iget-object v3, v7, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    .line 49
    goto :goto_0

    .end local v4           #order:Lcom/didi/car/model/CarOrder;
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    sget-object v8, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v7, v8, :cond_0

    goto :goto_1
.end method

.method public static sendNotificatioN(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V
    .locals 4
    .parameter "title"
    .parameter "content"
    .parameter "jsonObject"
    .parameter
    .parameter "showDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const v0, 0x7f0201c4

    .line 89
    .local v0, notificationId:I
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 91
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 92
    invoke-static {p3, p0, p1, p2, p4}, Lcom/didi/common/notification/CommonNotification;->getNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    return-void
.end method

.method public static sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter "title"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V

    .line 66
    return-void
.end method

.method public static sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V
    .locals 0
    .parameter "title"
    .parameter "content"
    .parameter "jsonObject"
    .parameter
    .parameter "showDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/common/notification/CommonNotification;->sendNotificatioN(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V

    .line 77
    return-void
.end method
