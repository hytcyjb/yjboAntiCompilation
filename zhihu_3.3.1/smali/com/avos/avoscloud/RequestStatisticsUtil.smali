.class Lcom/avos/avoscloud/RequestStatisticsUtil;
.super Ljava/lang/Object;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    }
.end annotation


# static fields
.field private static final LAST_SENDTIME:Ljava/lang/String; = "lastSendTime"

.field private static final REQUEST_DATA:Ljava/lang/String; = "com.avos.avoscloud.RequestStatisticsUtil.data"

.field private static TIME_INTERVAL:I

.field private static sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;


# instance fields
.field private lastSendTime:J

.field private requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x5265c00

    sput v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->TIME_INTERVAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 40
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getLastSendTime()V

    .line 41
    new-instance v0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/RequestStatisticsUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->updateLastSendTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    return-object v0
.end method

.method private getClientInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "platform"

    const-string v3, "Android"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 81
    const-string v1, "app_version"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "sdk_version"

    const-string v1, "v3.12.3"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const/4 v1, 0x0

    .line 89
    :try_start_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 91
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 98
    :goto_2
    const-string v1, "id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 96
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/avos/avoscloud/RequestStatisticsUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/avos/avoscloud/RequestStatisticsUtil;

    invoke-direct {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;

    .line 48
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastSendTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 156
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    const-string v1, "lastSendTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 159
    const-string v1, "lastSendTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 160
    return-void
.end method

.method private isNeedToSend()Z
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    sget v4, Lcom/avos/avoscloud/RequestStatisticsUtil;->TIME_INTERVAL:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 7
    .parameter

    .prologue
    .line 106
    #getter for: Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I
    invoke-static {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->access$000(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v1, "client"

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getClientInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "attributes"

    invoke-virtual {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->toPostDataMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v2

    .line 113
    const-string v3, "always_collect"

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 116
    invoke-virtual {v4, v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v3

    sget-object v5, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[B)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->put(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 119
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v0, v3}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 120
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v3, Lcom/avos/avoscloud/RequestStatisticsUtil$1;

    invoke-direct {v3, p0, p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$1;-><init>(Lcom/avos/avoscloud/RequestStatisticsUtil;Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->updateLastSendTime()V

    goto :goto_0
.end method

.method private updateLastSendTime()V
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 148
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string v1, "lastSendTime"

    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method


# virtual methods
.method public recordRequestTime(IZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->addRequestData(IZJ)V

    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->saveToPreference()V

    .line 63
    :cond_0
    return-void
.end method

.method public sendToServer()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->isNeedToSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    .line 72
    :cond_0
    return-void
.end method
