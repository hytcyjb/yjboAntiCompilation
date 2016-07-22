.class public Lnet/tsz/afinal/bitmap/core/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_COUNT:I = 0x2710

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x3200000

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x800000


# instance fields
.field private mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

.field private mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

.field private mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 0
    .parameter "cacheParams"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->init(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V

    .line 50
    return-void
.end method

.method private init(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 5
    .parameter "cacheParams"

    .prologue
    .line 58
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    .line 61
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v1, v1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v1, v1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    if-eqz v1, :cond_2

    .line 64
    new-instance v1, Lnet/tsz/afinal/bitmap/core/SoftMemoryCacheImpl;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v2, v2, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v1, v2}, Lnet/tsz/afinal/bitmap/core/SoftMemoryCacheImpl;-><init>(I)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    .line 70
    :cond_0
    :goto_0
    iget-boolean v1, p1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v1, :cond_1

    .line 72
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v1, v1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, path:Ljava/lang/String;
    new-instance v1, Lnet/tsz/afinal/bitmap/core/DiskCache;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v2, v2, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v3, v3, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lnet/tsz/afinal/bitmap/core/DiskCache;-><init>(Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    new-instance v1, Lnet/tsz/afinal/bitmap/core/BaseMemoryCacheImpl;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v2, v2, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v1, v2}, Lnet/tsz/afinal/bitmap/core/BaseMemoryCacheImpl;-><init>(I)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addToDiskCache(Ljava/lang/String;[B)V
    .locals 7
    .parameter "url"
    .parameter "data"

    .prologue
    .line 99
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p1}, Lnet/tsz/afinal/utils/Utils;->makeKey(Ljava/lang/String;)[B

    move-result-object v3

    .line 104
    .local v3, key:[B
    invoke-static {v3}, Lnet/tsz/afinal/utils/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 105
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p2

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object v5, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    monitor-enter v5

    .line 110
    :try_start_0
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lnet/tsz/afinal/bitmap/core/DiskCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    :try_start_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 111
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1, p2}, Lnet/tsz/afinal/bitmap/core/IMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 164
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 165
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/DiskCache;->delete()V

    .line 170
    :cond_0
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->addToDiskCache(Ljava/lang/String;[B)V

    .line 185
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0}, Lnet/tsz/afinal/bitmap/core/IMemoryCache;->evictAll()V

    .line 176
    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 188
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1}, Lnet/tsz/afinal/bitmap/core/IMemoryCache;->remove(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/DiskCache;->close()V

    .line 200
    :cond_0
    return-void
.end method

.method public getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"

    .prologue
    .line 154
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1}, Lnet/tsz/afinal/bitmap/core/IMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData(Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .parameter "url"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v5, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    if-nez v5, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    invoke-static {p1}, Lnet/tsz/afinal/utils/Utils;->makeKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 129
    .local v2, key:[B
    invoke-static {v2}, Lnet/tsz/afinal/utils/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 131
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;

    invoke-direct {v3}, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;-><init>()V

    .line 132
    .local v3, request:Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;
    iput-wide v0, v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    .line 133
    iget-object v5, p2, Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 134
    iget-object v6, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v5, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCache:Lnet/tsz/afinal/bitmap/core/DiskCache;

    invoke-virtual {v5, v3}, Lnet/tsz/afinal/bitmap/core/DiskCache;->lookup(Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 136
    monitor-exit v6

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    .end local v3           #request:Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 134
    .restart local v3       #request:Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    :try_start_4
    iget-object v5, v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lnet/tsz/afinal/utils/Utils;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    iput-object v5, p2, Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    .line 140
    array-length v5, v2

    iput v5, p2, Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    .line 141
    iget v5, v3, Lnet/tsz/afinal/bitmap/core/DiskCache$LookupRequest;->length:I

    iget v6, p2, Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p2, Lnet/tsz/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 142
    const/4 v4, 0x1

    goto :goto_0
.end method
