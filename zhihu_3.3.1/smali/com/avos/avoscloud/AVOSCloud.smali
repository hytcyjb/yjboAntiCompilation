.class public Lcom/avos/avoscloud/AVOSCloud;
.super Ljava/lang/Object;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVOSCloud$StorageType;
    }
.end annotation


# static fields
.field static final AV_CLOUD_API_VERSION_KEY:Ljava/lang/String; = "AV_CLOUD_API_VERSION"

.field static final AV_CLOUD_API_VERSION_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_API_VERSION_KEY_ZONE"

.field static final AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer; = null

.field static final AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

.field static final AV_CLOUD_CACHE_EXPIRE_DATE_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

.field static final AV_CLOUD_CACHE_EXPIRE_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

.field public static final DEFAULT_NETWORK_TIMEOUT:I = 0x3a98

.field static final DEFAULT_THREAD_POOL_SIZE:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x20

.field public static final LOG_LEVEL_INFO:I = 0x8

.field public static final LOG_LEVEL_NONE:I = -0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x10

.field public static applicationContext:Landroid/content/Context;

.field public static applicationId:Ljava/lang/String;

.field public static clientKey:Ljava/lang/String;

.field protected static handler:Landroid/os/Handler;

.field private static internalDebugLog:Z

.field private static isGcmOpen:Z

.field private static logLevel:I

.field private static networkTimeoutInMills:I

.field private static storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

.field private static threadPoolSize:I

.field private static userInternalDebugLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    .line 52
    sput-boolean v1, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    .line 53
    sput-boolean v1, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    .line 55
    sput-boolean v1, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    .line 61
    const/16 v0, 0x3a98

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    .line 63
    const/16 v0, 0xa

    sput v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    .line 96
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVObject;

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 98
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 100
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVObject;

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    :try_start_0
    const-string v0, "com.avos.avoscloud.AVInstallation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 106
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLastModifyCache()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->clearLastModifyCache()V

    .line 232
    return-void
.end method

.method public static disableAutoCacheCleaner()V
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    return-void
.end method

.method public static enableAutoCacheCleaner()V
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    return v0
.end method

.method public static getNetworkTimeout()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    return v0
.end method

.method private static getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string v1, "op"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    const-string v1, "name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    if-lez p2, :cond_2

    .line 299
    const-string v1, "ttl"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_2
    return-object v0
.end method

.method public static getServerDate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 663
    new-array v0, v3, [Ljava/util/Date;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 664
    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$8;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVOSCloud$8;-><init>([Ljava/util/Date;)V

    invoke-static {v3, v1}, Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V

    .line 679
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 682
    :cond_0
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static getServerDateInBackground(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V

    .line 654
    return-void
.end method

.method private static getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "date"

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$9;

    invoke-direct {v5, p1}, Lcom/avos/avoscloud/AVOSCloud$9;-><init>(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V

    move v3, p0

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 708
    return-void
.end method

.method public static getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    return-object v0
.end method

.method public static getThreadPoolSize()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    return v0
.end method

.method private static getVoiceCodeEnv(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    const-string v1, "smsType"

    const-string v2, "voice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const-string v1, "IDD"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call AVOSCloud.initialize in main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    sput-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 139
    sput-object p2, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 140
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 142
    invoke-static {p0}, Lcom/avos/avoscloud/AVOSCloud;->startAnalytics(Landroid/content/Context;)V

    .line 144
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    .line 148
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    .line 154
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearFileCacheMoreThanDays(I)Z

    .line 159
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    .line 161
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_API_VERSION_KEY_ZONE"

    const-string v2, "AV_CLOUD_API_VERSION"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->onUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_API_VERSION_KEY_ZONE"

    const-string v2, "AV_CLOUD_API_VERSION"

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static isDebugLogEnabled()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGcmOpen()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    return v0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    return v0
.end method

.method protected static onUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p0}, Lcom/avos/avoscloud/AVUtils;->compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "try to do some upgrade work"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 613
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$7;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVOSCloud$7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVUser;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V

    .line 626
    :cond_1
    :try_start_0
    const-string v0, "com.avos.avoscloud.AVInstallation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 627
    const-string v1, "updateCurrentInstallation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 628
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    .line 635
    :cond_2
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    const-string v0, "failed to update local Installation"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestSMSCode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 434
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lcom/avos/avoscloud/AVOSCloud;->getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/avos/avoscloud/AVOSCloud$1;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVOSCloud$1;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 285
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$2;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVOSCloud$2;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 363
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 366
    :cond_0
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 439
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, p1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 440
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lcom/avos/avoscloud/AVOSCloud;->getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p4}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 318
    return-void
.end method

.method public static requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 372
    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 452
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, p1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackgroud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 453
    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lcom/avos/avoscloud/AVOSCloud;->getSMSCodeEnv(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p4}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 335
    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 385
    return-void
.end method

.method private static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 389
    .line 391
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Phone Number"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 396
    :cond_1
    if-nez p2, :cond_2

    .line 397
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 399
    :cond_2
    const-string v0, "mobilePhoneNumber"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    const-string v0, "template"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_3
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestSmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$3;

    invoke-direct {v5, p4}, Lcom/avos/avoscloud/AVOSCloud$3;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static requestVoiceCode(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVOSCloud;->requestVoiceCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private static requestVoiceCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/avos/avoscloud/AVOSCloud;->getVoiceCodeEnv(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/avos/avoscloud/AVOSCloud$4;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVOSCloud$4;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 488
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 491
    :cond_0
    return-void
.end method

.method public static requestVoiceCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-static {v1}, Lcom/avos/avoscloud/AVOSCloud;->getVoiceCodeEnv(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v1, v0, p1}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 502
    return-void
.end method

.method private static requestVoiceCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/avos/avoscloud/AVOSCloud;->getVoiceCodeEnv(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/avos/avoscloud/AVOSCloud;->requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 514
    return-void
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setBaseUrl(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static setCacheFileAutoExpireDate(I)V
    .locals 4
    .parameter

    .prologue
    .line 245
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    return-void
.end method

.method public static setDebugLogEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 199
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    .line 200
    return-void
.end method

.method public static setGcmOpen(Z)V
    .locals 0
    .parameter

    .prologue
    .line 215
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    .line 216
    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 227
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->setLastModifyEnabled(Z)V

    .line 228
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter

    .prologue
    .line 187
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    .line 188
    return-void
.end method

.method public static setNetworkTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    .line 72
    return-void
.end method

.method public static setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->storageType:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    .line 212
    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 88
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    .line 89
    return-void
.end method

.method static showInternalDebugLog(Z)V
    .locals 0
    .parameter

    .prologue
    .line 191
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    .line 192
    return-void
.end method

.method public static showInternalDebugLog()Z
    .locals 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    return v0
.end method

.method private static startAnalytics(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 639
    :try_start_0
    const-string v0, "com.avos.avoscloud.AVAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 640
    const-string v1, "start"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 641
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    const-string v0, "statistics library not started since not included"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static useAVCloudCN()V
    .locals 0

    .prologue
    .line 174
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    .line 175
    return-void
.end method

.method public static useAVCloudUS()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    .line 171
    return-void
.end method

.method public static verifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public static verifyCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 575
    return-void
.end method

.method public static verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 524
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$5;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVOSCloud$5;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 537
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 540
    :cond_0
    return-void
.end method

.method public static verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVOSCloud;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 563
    return-void
.end method

.method private static verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 580
    .line 582
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Verify Code"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 586
    :cond_1
    const-string v0, "verifySmsCode/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 588
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$6;

    invoke-direct {v5, p3}, Lcom/avos/avoscloud/AVOSCloud$6;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method
