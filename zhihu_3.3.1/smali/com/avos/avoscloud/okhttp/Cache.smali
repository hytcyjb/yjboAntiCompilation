.class public final Lcom/avos/avoscloud/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;,
        Lcom/avos/avoscloud/okhttp/Cache$Entry;,
        Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/okhttp/Cache;-><init>(Ljava/io/File;JLcom/avos/avoscloud/okhttp/internal/io/FileSystem;)V

    .line 170
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/avos/avoscloud/okhttp/internal/io/FileSystem;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/avos/avoscloud/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/Cache$1;-><init>(Lcom/avos/avoscloud/okhttp/Cache;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    .line 173
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->create(Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    .line 174
    return-void
.end method

.method private abortQuietly(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->remove(Lcom/avos/avoscloud/okhttp/Request;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/avos/avoscloud/okio/BufferedSource;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-static {p0}, Lcom/avos/avoscloud/okhttp/Cache;->readInt(Lcom/avos/avoscloud/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/Cache;->update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Cache;->trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/okhttp/Cache;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$808(Lcom/avos/avoscloud/okhttp/Cache;)I
    .locals 2
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/avos/avoscloud/okhttp/Cache;)I
    .locals 2
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method private put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/okhttp/Cache;->remove(Lcom/avos/avoscloud/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/avos/avoscloud/okhttp/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/avos/avoscloud/okhttp/Cache$Entry;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/okhttp/Cache$Entry;-><init>(Lcom/avos/avoscloud/okhttp/Response;)V

    .line 236
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/Cache;->urlToKey(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 237
    if-eqz v2, :cond_0

    .line 240
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->writeTo(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V

    .line 241
    new-instance v1, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 243
    :goto_1
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/okhttp/Cache;->abortQuietly(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 217
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static readInt(Lcom/avos/avoscloud/okio/BufferedSource;)I
    .locals 6
    .parameter

    .prologue
    .line 682
    :try_start_0
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 683
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 684
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 685
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private remove(Lcom/avos/avoscloud/okhttp/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Cache;->urlToKey(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 250
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->requestCount:I

    .line 398
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    if-eqz v0, :cond_1

    .line 400
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-eqz v0, :cond_0

    .line 404
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v1, Lcom/avos/avoscloud/okhttp/Cache$Entry;

    invoke-direct {v1, p2}, Lcom/avos/avoscloud/okhttp/Cache$Entry;-><init>(Lcom/avos/avoscloud/okhttp/Response;)V

    .line 254
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;

    #getter for: Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->access$500(Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2

    .line 255
    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->writeTo(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V

    .line 260
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v1

    .line 263
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/Cache;->abortQuietly(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method private static urlToKey(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->close()V

    .line 385
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->delete()V

    .line 301
    return-void
.end method

.method public evictAll()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->evictAll()V

    .line 309
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->flush()V

    .line 381
    return-void
.end method

.method get(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Cache;->urlToKey(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_1
    new-instance v2, Lcom/avos/avoscloud/okhttp/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/avos/avoscloud/okio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/okhttp/Cache$Entry;-><init>(Lcom/avos/avoscloud/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    invoke-virtual {v2, p1, v1}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->response(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    .line 203
    invoke-virtual {v2, p1, v1}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->matches(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 208
    goto :goto_0

    .line 189
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 292
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/avos/avoscloud/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/Cache$2;-><init>(Lcom/avos/avoscloud/okhttp/Cache;)V

    return-object v0
.end method
