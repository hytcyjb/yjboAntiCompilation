.class public Lcom/didi/common/cache/ImageFetcher;
.super Lcom/didi/common/cache/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0xa00000

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# instance fields
.field private mHttpCacheDir:Ljava/io/File;

.field private mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "imageSize"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/didi/common/cache/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 72
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageFetcher;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/cache/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageFetcher;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 157
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :cond_0
    return-void
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 289
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 77
    const-string v0, "http"

    invoke-static {p1, v0}, Lcom/didi/common/cache/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    .line 78
    return-void
.end method

.method private initHttpDiskCache()V
    .locals 7

    .prologue
    const-wide/32 v5, 0xa00000

    .line 87
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/didi/common/cache/ImageCache;->getUsableSpace(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v5, 0xa00000

    invoke-static {v1, v3, v4, v5, v6}, Lcom/didi/common/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/didi/common/cache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 99
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v2

    .line 101
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 171
    invoke-static {p1}, Lcom/didi/common/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 173
    .local v3, fileDescriptor:Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    .line 175
    .local v4, fileInputStream:Ljava/io/FileInputStream;
    const-string v7, "imagecache: processBitmap"

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 176
    iget-object v10, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 178
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    .line 180
    :try_start_1
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v7

    goto :goto_0

    .line 184
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    if-nez v7, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/didi/common/cache/ImageFetcher;->initHttpDiskCache()V

    .line 188
    :cond_1
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_5

    .line 190
    :try_start_3
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v7, v5}, Lcom/didi/common/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Snapshot;

    move-result-object v6

    .line 191
    .local v6, snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    if-nez v6, :cond_3

    .line 192
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v7, v5}, Lcom/didi/common/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Editor;

    move-result-object v2

    .line 193
    .local v2, editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    if-eqz v2, :cond_2

    .line 194
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/didi/common/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lcom/didi/common/cache/ImageFetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 196
    invoke-virtual {v2}, Lcom/didi/common/cache/DiskLruCache$Editor;->commit()V

    .line 201
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v7, v5}, Lcom/didi/common/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Snapshot;

    move-result-object v6

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imagecache: processBitmap  snapshot is "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v6, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 204
    .end local v2           #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    :cond_3
    if-eqz v6, :cond_4

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/didi/common/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    .line 207
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 208
    const-string v7, "imagecache: processBitmap  snapshot ....."

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 215
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 220
    .end local v6           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_5
    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 224
    const-string v7, "imagecache: processBitmap  fileDescriptor is not null"

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 225
    iget v7, p0, Lcom/didi/common/cache/ImageFetcher;->mImageWidth:I

    iget v10, p0, Lcom/didi/common/cache/ImageFetcher;->mImageHeight:I

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageFetcher;->getImageCache()Lcom/didi/common/cache/ImageCache;

    move-result-object v11

    invoke-static {v3, v7, v10, v11}, Lcom/didi/common/cache/ImageFetcher;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;IILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imagecache: processBitmap  bitmap is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_b

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 229
    :cond_6
    if-eqz v4, :cond_7

    .line 231
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 234
    :cond_7
    :goto_5
    return-object v1

    .line 198
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    .restart local v6       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_8
    :try_start_7
    invoke-virtual {v2}, Lcom/didi/common/cache/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 210
    .end local v2           #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    .end local v6           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_1
    move-exception v7

    .line 213
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 215
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 216
    :catch_2
    move-exception v7

    goto :goto_3

    .restart local v2       #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    .restart local v6       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_9
    move v7, v9

    .line 202
    goto :goto_2

    .line 211
    .end local v2           #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    .end local v6           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_3
    move-exception v7

    .line 213
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 215
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 216
    :catch_4
    move-exception v7

    goto :goto_3

    .line 213
    :catchall_0
    move-exception v7

    if-nez v3, :cond_a

    if-eqz v4, :cond_a

    .line 215
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 216
    :cond_a
    :goto_6
    :try_start_b
    throw v7

    .line 220
    :catchall_1
    move-exception v7

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v7

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    move v7, v9

    .line 227
    goto :goto_4

    .line 216
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_5
    move-exception v7

    goto :goto_3

    .end local v6           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_6
    move-exception v8

    goto :goto_6

    .line 232
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_7
    move-exception v7

    goto :goto_5
.end method


# virtual methods
.method protected clearCacheInternal()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/didi/common/cache/ImageResizer;->clearCacheInternal()V

    .line 106
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 114
    invoke-direct {p0}, Lcom/didi/common/cache/ImageFetcher;->initHttpDiskCache()V

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected closeCacheInternal()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/didi/common/cache/ImageResizer;->closeCacheInternal()V

    .line 135
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 10
    .parameter "urlString"
    .parameter "outputStream"

    .prologue
    .line 249
    invoke-static {}, Lcom/didi/common/cache/ImageFetcher;->disableConnectionReuseIfNecessary()V

    .line 250
    const/4 v7, 0x0

    .line 251
    .local v7, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 252
    .local v4, out:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 255
    .local v2, in:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 256
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 257
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 258
    .end local v2           #in:Ljava/io/BufferedInputStream;
    .local v3, in:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v5, p2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 261
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .local v5, out:Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, b:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    .line 262
    invoke-virtual {v5, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 265
    .end local v1           #b:I
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 267
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .end local v6           #url:Ljava/net/URL;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v7, :cond_0

    .line 268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 271
    :cond_0
    if-eqz v4, :cond_1

    .line 272
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 274
    :cond_1
    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 279
    :cond_2
    :goto_2
    const/4 v8, 0x0

    :goto_3
    return v8

    .line 264
    .end local v2           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #b:I
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #url:Ljava/net/URL;
    :cond_3
    const/4 v8, 0x1

    .line 267
    if-eqz v7, :cond_4

    .line 268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 271
    :cond_4
    if-eqz v5, :cond_5

    .line 272
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 274
    :cond_5
    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_6
    :goto_4
    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 277
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 267
    .end local v1           #b:I
    .end local v6           #url:Ljava/net/URL;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v7, :cond_7

    .line 268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 271
    :cond_7
    if-eqz v4, :cond_8

    .line 272
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 274
    :cond_8
    if-eqz v2, :cond_9

    .line 275
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 277
    :cond_9
    :goto_6
    throw v8

    :catch_1
    move-exception v9

    goto :goto_6

    .line 267
    .end local v2           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #url:Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v2           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #out:Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 277
    .end local v6           #url:Ljava/net/URL;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 265
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v2           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #url:Ljava/net/URL;
    :catch_4
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 277
    .end local v2           #in:Ljava/io/BufferedInputStream;
    .end local v4           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #b:I
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v9

    goto :goto_4
.end method

.method protected flushCacheInternal()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/didi/common/cache/ImageResizer;->flushCacheInternal()V

    .line 122
    iget-object v1, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageFetcher;->mHttpDiskCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected initDiskCacheInternal()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/didi/common/cache/ImageResizer;->initDiskCacheInternal()V

    .line 83
    invoke-direct {p0}, Lcom/didi/common/cache/ImageFetcher;->initHttpDiskCache()V

    .line 84
    return-void
.end method

.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"

    .prologue
    .line 239
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/cache/ImageFetcher;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
