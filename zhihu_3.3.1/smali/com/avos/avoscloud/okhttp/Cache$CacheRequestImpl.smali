.class final Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lcom/avos/avoscloud/okio/Sink;

.field private cacheOut:Lcom/avos/avoscloud/okio/Sink;

.field private done:Z

.field private final editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Cache;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/avos/avoscloud/okio/Sink;

    .line 433
    new-instance v0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/avos/avoscloud/okio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;Lcom/avos/avoscloud/okio/Sink;Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->body:Lcom/avos/avoscloud/okio/Sink;

    .line 446
    return-void
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$702(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 449
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 451
    monitor-exit v1

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 454
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache;->access$908(Lcom/avos/avoscloud/okhttp/Cache;)I

    .line 455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/avos/avoscloud/okio/Sink;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 458
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public body()Lcom/avos/avoscloud/okio/Sink;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->body:Lcom/avos/avoscloud/okio/Sink;

    return-object v0
.end method
