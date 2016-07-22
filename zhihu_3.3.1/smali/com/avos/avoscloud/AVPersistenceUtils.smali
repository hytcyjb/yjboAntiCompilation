.class public Lcom/avos/avoscloud/AVPersistenceUtils;
.super Ljava/lang/Object;
.source "AVPersistenceUtils.java"


# static fields
.field private static fileLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/avos/avoscloud/AVPersistenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAnalysisCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Analysis"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CommandCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    return-object v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 2
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 24
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    if-eqz v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPaasDocumentDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "Paas"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static readContentBytesFromFile(Ljava/io/File;)[B
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p0, :cond_0

    .line 173
    const-string v0, "null file object."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 206
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "not file object"

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-static {v0, v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    move-object v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    .line 183
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [B

    .line 188
    const/4 v0, 0x0

    .line 189
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_4
    :goto_1
    :try_start_1
    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 191
    array-length v5, v2

    sub-int/2addr v5, v0

    .line 192
    invoke-virtual {v3, v2, v0, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 193
    if-lez v5, :cond_4

    .line 194
    add-int/2addr v0, v5

    goto :goto_1

    .line 203
    :cond_5
    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v2

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 199
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    const-string v3, "Exception during file read"

    invoke-static {v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    :cond_6
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    .line 206
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 203
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 198
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public static readContentFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 165
    :cond_0
    const-string v0, ""

    .line 167
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static removeLock(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile([BLjava/io/File;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveContentToFile([BLjava/io/File;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    .line 128
    const/4 v0, 0x1

    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    if-eqz v2, :cond_0

    .line 141
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    :cond_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    :cond_1
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 137
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    if-eqz v2, :cond_2

    .line 141
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    :cond_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    .line 144
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 141
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    :cond_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 140
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/avos/avoscloud/AVPersistenceUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/avos/avoscloud/AVPersistenceUtils;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;

    .line 43
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFromDocumentDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFromDocumentDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromDocumentDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 228
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 231
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 251
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 256
    :goto_0
    return-object p3

    .line 254
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0
.end method

.method public getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-object p3

    .line 276
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public removeKeyZonePersistentSettings(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 300
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 294
    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-object v0
.end method

.method public removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method public savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {p2, p3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 115
    return-void
.end method
