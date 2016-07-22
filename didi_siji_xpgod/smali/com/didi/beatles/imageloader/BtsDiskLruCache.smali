.class public Lcom/didi/beatles/imageloader/BtsDiskLruCache;
.super Ljava/lang/Object;
.source "BtsDiskLruCache.java"


# static fields
.field private static final CACHE_FILENAME_PREFIX:Ljava/lang/String; = "cache_"

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAX_REMOVALS:I = 0x4

.field private static final cacheFileFilter:Ljava/io/FilenameFilter;


# instance fields
.field private cacheByteSize:I

.field private cacheSize:I

.field private final mCacheDir:Ljava/io/File;

.field private final mLinkedHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxCacheByteSize:J

.field private final maxCacheItemSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/didi/beatles/imageloader/BtsDiskLruCache$1;

    invoke-direct {v0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache$1;-><init>()V

    sput-object v0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 4
    .parameter "cacheDir"
    .parameter "maxByteSize"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheSize:I

    .line 55
    iput v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    .line 56
    const/16 v0, 0x40

    iput v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->maxCacheItemSize:I

    .line 57
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->maxCacheByteSize:J

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    .line 105
    iput-wide p2, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->maxCacheByteSize:J

    .line 106
    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 233
    .local v0, cacheDir:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->clearCache(Ljava/io/File;)V

    .line 234
    return-void
.end method

.method private static clearCache(Ljava/io/File;)V
    .locals 3
    .parameter "cacheDir"

    .prologue
    .line 244
    sget-object v2, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 245
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 246
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public static createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cacheDir"
    .parameter "key"

    .prologue
    .line 281
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flushCache()V
    .locals 9

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, count:I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    iget v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheSize:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->maxCacheByteSize:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 162
    :cond_0
    iget-object v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, eldestEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, eldestFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 165
    .local v3, eldestFileSize:J
    iget-object v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 167
    iget-object v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iput v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheSize:I

    .line 168
    iget v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    int-to-long v5, v5

    sub-long/2addr v5, v3

    long-to-int v5, v5

    iput v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v1           #eldestEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #eldestFile:Ljava/io/File;
    .end local v3           #eldestFileSize:J
    :cond_1
    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/didi/beatles/imageloader/BtsImageLoaderUtils;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/didi/beatles/imageloader/BtsImageLoaderUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 261
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/didi/beatles/imageloader/BtsDiskLruCache;
    .locals 2
    .parameter "context"
    .parameter "cacheDir"
    .parameter "maxByteSize"

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/didi/beatles/imageloader/BtsImageLoaderUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 89
    new-instance v0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;-><init>(Ljava/io/File;J)V

    .line 92
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "file"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheSize:I

    .line 145
    iget v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    int-to-long v0, v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->cacheByteSize:I

    .line 146
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->clearCache(Ljava/io/File;)V

    .line 222
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 203
    iget-object v2, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    :goto_0
    return v1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, existingFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"

    .prologue
    .line 180
    iget-object v3, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 183
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    .line 191
    :goto_0
    return-object v2

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, existingFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 192
    .end local v0           #existingFile:Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 191
    .restart local v0       #existingFile:Ljava/lang/String;
    .restart local v1       #file:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 8
    .parameter "key"
    .parameter "in"

    .prologue
    .line 115
    iget-object v6, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v6

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_1

    .line 118
    :try_start_1
    iget-object v5, p0, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v5, p1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, file:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".tmp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, tmpFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".tmp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 125
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-lez v2, :cond_2

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    .end local v0           #buf:[B
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #len:I
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #tmpFile:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 139
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    return-void

    .line 128
    .restart local v0       #buf:[B
    .restart local v1       #file:Ljava/lang/String;
    .restart local v2       #len:I
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #tmpFile:Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 129
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 130
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 131
    invoke-direct {p0, p1, v1}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->flushCache()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 135
    .end local v0           #buf:[B
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #len:I
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #tmpFile:Ljava/io/File;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method
