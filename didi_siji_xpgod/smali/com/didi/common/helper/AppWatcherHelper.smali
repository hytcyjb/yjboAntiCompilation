.class public Lcom/didi/common/helper/AppWatcherHelper;
.super Ljava/lang/Object;
.source "AppWatcherHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/AppWatcherHelper$AppType;
    }
.end annotation


# static fields
.field private static final sAppInfoFileName:Ljava/lang/String; = "AppInfoList"

.field private static final sDefaultInterval:J = 0xa4cb80L

.field private static final sFormatAPPName:Ljava/lang/String; = "\\u0002name\\u0001%s"

.field private static final sFormatAPPTime:Ljava/lang/String; = "\\u0002time\\u0001%s"

.field private static final sFormatAPPUpdateType:Ljava/lang/String; = "\\u0002type\\u0001%s\\u0003"

.field private static final sFormatAPPVersion:Ljava/lang/String; = "\\u0002version\\u0001%s"

.field private static final sFormatPackage:Ljava/lang/String; = "package\\u0001%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->getRunTimesInToday()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->getRunTimesInWeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->updateAppWatcherRunTimes()V

    return-void
.end method

.method public static collectAndUploadAppInfo()V
    .locals 3

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->scanAndsplitAppInfoList()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, appListInfo:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/didi/common/helper/AppWatcherHelper;->uploadAppInfo(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static dataFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAppWatcherPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/didi/common/receiver/AppWatcherReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getRunTimesInToday()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 133
    .local v0, day:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getRecentAppStartDay()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 134
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/config/Preferences;->setRecentAppStartDay(I)V

    .line 135
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setAppWatchStartTimesInDay(I)V

    .line 138
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getAppWatchStartTimesInDay()I

    move-result v1

    goto :goto_0
.end method

.method private static getRunTimesInWeek()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 118
    .local v0, week:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getRecentAppStartWeek()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 119
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/config/Preferences;->setRecentAppStartWeek(I)V

    .line 120
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setAppWatchStartTimesInWeek(I)V

    .line 123
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getAppWatchStartTimesInWeek()I

    move-result v1

    goto :goto_0
.end method

.method private static persistAppInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "appList"

    .prologue
    .line 345
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/didi/common/util/Utils;->getAppPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppInfoList"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    return-void
.end method

.method public static postAppInfo(Ljava/util/Map;)Lcom/didi/common/model/BaseObject;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/didi/common/model/BaseObject;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/didi/common/model/BaseObject;

    invoke-direct {v8}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 310
    .local v8, obj:Lcom/didi/common/model/BaseObject;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "p_gettracelog"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v11, parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 314
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 315
    .local v10, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 316
    .local v7, name:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 317
    .local v12, value:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v9, v7, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v9, p:Lorg/apache/http/NameValuePair;
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #p:Lorg/apache/http/NameValuePair;
    .end local v10           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #value:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "utf-8"

    invoke-direct {v4, v11, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 324
    .local v4, httpentity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 325
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 326
    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 327
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_1

    .line 328
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, json:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "json "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v8, v6}, Lcom/didi/common/model/BaseObject;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v4           #httpentity:Lorg/apache/http/HttpEntity;
    .end local v6           #json:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v8

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static readAppInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/didi/common/util/Utils;->getAppPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppInfoList"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static scanAndsplitAppInfoList()Ljava/lang/String;
    .locals 9

    .prologue
    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 219
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 221
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 224
    .local v5, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    .local v3, pkgName:Ljava/lang/String;
    sget-object v8, Lcom/didi/common/helper/AppWatcherHelper$AppType;->DEFAULT:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-static {v4, v3, v8}, Lcom/didi/common/helper/AppWatcherHelper;->splitAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, appInfo:Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    .end local v0           #appInfo:Ljava/lang/String;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v5           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static splitAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)Ljava/lang/String;
    .locals 10
    .parameter "pm"
    .parameter "pkgName"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, appName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 238
    .local v4, version:Ljava/lang/String;
    const/4 v2, 0x0

    .line 241
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 246
    :goto_0
    if-eqz v2, :cond_0

    .line 247
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 250
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v5, "package\\u0001%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v5, "\\u0002name\\u0001%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v5, "\\u0002version\\u0001%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v5, "\\u0002time\\u0001%s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->dataFormat()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v5, "\\u0002type\\u0001%s\\u0003"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/didi/common/helper/AppWatcherHelper$AppType;->ordinal()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 242
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startAppWatcherAlarm()V
    .locals 8

    .prologue
    .line 161
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v7

    .line 162
    .local v7, context:Landroid/content/Context;
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->getAppWatcherPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    .line 163
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 165
    .local v2, firstTime:J
    const-string v1, "alarm"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 166
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 167
    const/4 v1, 0x2

    const-wide/32 v4, 0xa4cb80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 168
    return-void
.end method

.method public static startAppWatcherIfNeed()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/helper/AppWatcherHelper$1;

    invoke-direct {v1}, Lcom/didi/common/helper/AppWatcherHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public static stopAppWatcherAlarm()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    .line 175
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->getAppWatcherPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 176
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 177
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 178
    return-void
.end method

.method private static updateAppWatcherRunTimes()V
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getAppWatchStartTimesInDay()I

    move-result v0

    .line 149
    .local v0, timesInDay:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timesInDaytimesInDay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/didi/common/config/Preferences;->setAppWatchStartTimesInDay(I)V

    .line 152
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getAppWatchStartTimesInWeek()I

    move-result v1

    .line 153
    .local v1, timesInWeek:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timesInWeektimesInWeek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setAppWatchStartTimesInWeek(I)V

    .line 155
    return-void
.end method

.method public static uploadAppInfo(Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)V
    .locals 5
    .parameter "packageName"
    .parameter "appType"

    .prologue
    .line 198
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 199
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-static {v2, p0, p1}, Lcom/didi/common/helper/AppWatcherHelper;->splitAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, appInfo:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->readAppInfo()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, oldAppInfo:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/didi/common/helper/AppWatcherHelper;->uploadAppInfo(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public static uploadAppInfo(Ljava/lang/String;Z)V
    .locals 5
    .parameter "appList"
    .parameter "persistent"

    .prologue
    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v3, "ostype"

    const-string v4, "2"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v3, "usertype"

    const-string v4, "3"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v3, "app_list"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v3, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v3, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v3, "os"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v3, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v3, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v3, "datatype"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v3, "userlat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v3, "userlng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v3, "maptype"

    const-string v4, "soso"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v3, "sig"

    invoke-static {v1}, Lcom/didi/common/util/Signature;->generateSignature(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v3, "pixels"

    sget-object v4, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v3, "mac"

    sget-object v4, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v3, "cpu"

    sget-object v4, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v3, "android_id"

    sget-object v4, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v3, "uuid"

    sget-object v4, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v3, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v1}, Lcom/didi/common/helper/AppWatcherHelper;->postAppInfo(Ljava/util/Map;)Lcom/didi/common/model/BaseObject;

    move-result-object v2

    .line 298
    .local v2, result:Lcom/didi/common/model/BaseObject;
    invoke-virtual {v2}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 299
    const-string v3, "persistent appinfo!"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 300
    invoke-static {p0}, Lcom/didi/common/helper/AppWatcherHelper;->persistAppInfo(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    if-eqz p1, :cond_0

    .line 302
    const-string v3, "appinfo post success!"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/didi/common/util/Utils;->getAppPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppInfoList"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
