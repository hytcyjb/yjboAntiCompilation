.class public Lcom/avos/avoscloud/AVCacheManager;
.super Ljava/lang/Object;
.source "AVCacheManager.java"


# static fields
.field private static instance:Lcom/avos/avoscloud/AVCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearCacheMoreThanDays(I)Z
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v8, p0

    const-wide/16 v10, 0x18

    mul-long/2addr v8, v10

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 126
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    :goto_1
    return v0

    .line 131
    :cond_0
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "Cache Directory Failure"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 139
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static clearCacheMoreThanOneDay()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearFileCacheMoreThanDays(I)Z
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 144
    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_3

    .line 150
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v8, p0

    const-wide/16 v10, 0x18

    mul-long/2addr v8, v10

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_3
    const-string v0, "File Cache Directory Failure"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 165
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method private static keyValueCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "PaasKeyValueCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    return-object v0
.end method

.method public static declared-synchronized sharedInstance()Lcom/avos/avoscloud/AVCacheManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/avos/avoscloud/AVCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/avos/avoscloud/AVCacheManager;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCacheManager;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    const-string v1, "{}"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, p2

    if-lez v1, :cond_1

    .line 68
    :cond_0
    const/16 v0, 0x78

    const-string v1, "Cache Missing"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p5, v0, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p5, v0, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public hasCache(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public hasValidCache(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveCache(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const-string v1, "{}"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
