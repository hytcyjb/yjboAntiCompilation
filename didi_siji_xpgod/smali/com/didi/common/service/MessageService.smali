.class public Lcom/didi/common/service/MessageService;
.super Landroid/app/Service;
.source "MessageService.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mLocationListener:Lcom/didi/soso/location/LocationInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/didi/common/service/MessageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/service/MessageService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Lcom/didi/common/service/MessageService$1;

    invoke-direct {v0, p0}, Lcom/didi/common/service/MessageService$1;-><init>(Lcom/didi/common/service/MessageService;)V

    iput-object v0, p0, Lcom/didi/common/service/MessageService;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/service/MessageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/common/service/MessageService;->loadServerMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/service/MessageService;Lcom/didi/common/model/ServerMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/didi/common/service/MessageService;->sendNotification(Lcom/didi/common/model/ServerMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/service/MessageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/common/service/MessageService;->unlocate()V

    return-void
.end method

.method private loadServerMessage()V
    .locals 5

    .prologue
    .line 77
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/didi/common/service/MessageService$2;

    invoke-direct {v4, p0}, Lcom/didi/common/service/MessageService$2;-><init>(Lcom/didi/common/service/MessageService;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->getServerMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 92
    return-void
.end method

.method private locate()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/service/MessageService;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 57
    return-void
.end method

.method private sendNotification(Lcom/didi/common/model/ServerMessage;)V
    .locals 11
    .parameter "message"

    .prologue
    .line 100
    iget-object v7, p1, Lcom/didi/common/model/ServerMessage;->title:Ljava/lang/String;

    .line 101
    .local v7, title:Ljava/lang/String;
    iget-object v1, p1, Lcom/didi/common/model/ServerMessage;->message:Ljava/lang/String;

    .line 103
    .local v1, content:Ljava/lang/String;
    const v4, 0x7f0201c4

    .line 104
    .local v4, notificationId:I
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/didi/common/service/MessageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 105
    .local v5, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 106
    new-instance v3, Landroid/app/Notification;

    const v8, 0x7f0201c4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v8, v1, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 107
    .local v3, notification:Landroid/app/Notification;
    const/16 v8, 0x10

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "is_push"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string v8, "push_title"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v8, "push_content"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/didi/common/service/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/didi/frame/MainActivity;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    const/high16 v8, 0x1020

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 121
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v3, v8, v7, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    invoke-virtual {v5, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method

.method private unlocate()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/common/service/MessageService;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/common/service/MessageService;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/common/service/MessageService;->locate()V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
