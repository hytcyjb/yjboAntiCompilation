.class Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

.field final synthetic val$cacheBody:Lcom/avos/avoscloud/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

.field final synthetic val$source:Lcom/avos/avoscloud/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okio/BufferedSource;Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;Lcom/avos/avoscloud/okio/BufferedSink;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/avos/avoscloud/okio/BufferedSource;

    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->discard(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 977
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;->abort()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->close()V

    .line 980
    return-void
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 947
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 956
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 957
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    .line 958
    iput-boolean v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 959
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    :cond_0
    move-wide v4, v0

    .line 966
    :goto_0
    return-wide v4

    .line 948
    :catch_0
    move-exception v0

    .line 949
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v1, :cond_1

    .line 950
    iput-boolean v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 951
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    invoke-interface {v1}, Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;->abort()V

    .line 953
    :cond_1
    throw v0

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->buffer()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Buffer;->copyTo(Lcom/avos/avoscloud/okio/Buffer;JJ)Lcom/avos/avoscloud/okio/Buffer;

    .line 965
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
