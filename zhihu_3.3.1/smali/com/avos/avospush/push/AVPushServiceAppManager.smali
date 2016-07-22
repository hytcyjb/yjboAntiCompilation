.class public Lcom/avos/avospush/push/AVPushServiceAppManager;
.super Ljava/lang/Object;
.source "AVPushServiceAppManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final AV_PUSH_SERVICE_APP_DATA:Ljava/lang/String; = "AV_PUSH_SERVICE_APP_DATA"

.field private static final ICON_KEY:Ljava/lang/String; = "_notification_icon"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final random:Ljava/util/Random;


# instance fields
.field private context:Landroid/content/Context;

.field private final defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    if-nez p1, :cond_0

    .line 44
    sget-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please call AVOSCloud.initialize first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    .line 51
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->readDataFromCache()V

    .line 52
    sget-object v0, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init AppManager Done, read data from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 182
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "Notification"

    goto :goto_1
.end method

.method private getSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    const-string v0, "sound"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v0, "alert"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 202
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 192
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 194
    :cond_2
    const-string v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 195
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_4
    const-string v2, "message"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 202
    goto :goto_0
.end method

.method private getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    :goto_0
    return-object v0

    .line 156
    :cond_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 157
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_5
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readDataFromCache()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    const-string v3, "_notification_icon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public containsDefaultPushCallback(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIcon()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    return v0
.end method

.method public removeDefaultPushCallback(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No default callback found, did you forget to invoke setDefaultPushCallback?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 116
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 119
    sget-object v1, Lcom/avos/avospush/push/AVPushServiceAppManager;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 120
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 124
    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Lcom/avos/avospush/notification/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getNotificationIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setSmallIcon(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setDefaults(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v3

    .line 131
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 133
    invoke-virtual {v3}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 134
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 137
    :cond_1
    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_2
    sget-object v1, Lcom/avos/avospush/push/AVPushServiceAppManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class name is invalid, which must contain \'.\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNotificationIcon(I)V
    .locals 4
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->notificationIcon:I

    .line 81
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    const-string v2, "_notification_icon"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushServiceAppManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
