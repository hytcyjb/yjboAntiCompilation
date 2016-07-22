.class public Lcom/avos/avoscloud/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/Call$1;,
        Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;,
        Lcom/avos/avoscloud/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

.field engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/avos/avoscloud/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->copyWithDefaults()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 47
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/Call;Z)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/Call;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/avos/avoscloud/okhttp/Response;
    .locals 3
    .parameter

    .prologue
    .line 193
    new-instance v0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/avos/avoscloud/okhttp/Call;ILcom/avos/avoscloud/okhttp/Request;Z)V

    .line 194
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/Interceptor$Chain;->proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    const-string v2, "/..."

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->canceled:Z

    .line 120
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->disconnect()V

    .line 121
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/avos/avoscloud/okhttp/Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/Call;->enqueue(Lcom/avos/avoscloud/okhttp/Callback;Z)V

    .line 104
    return-void
.end method

.method enqueue(Lcom/avos/avoscloud/okhttp/Callback;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->executed:Z

    .line 110
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;-><init>(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;ZLcom/avos/avoscloud/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Dispatcher;->enqueue(Lcom/avos/avoscloud/okhttp/Call$AsyncCall;)V

    .line 112
    return-void
.end method

.method public execute()Lcom/avos/avoscloud/okhttp/Response;
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->executed:Z

    .line 74
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->executed(Lcom/avos/avoscloud/okhttp/Call;)V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->finished(Lcom/avos/avoscloud/okhttp/Call;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->finished(Lcom/avos/avoscloud/okhttp/Call;)V

    return-object v0
.end method

.method getResponse(Lcom/avos/avoscloud/okhttp/Request;Z)Lcom/avos/avoscloud/okhttp/Response;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->body()Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_9

    .line 244
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->contentType()Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_0

    .line 248
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->contentLength()J

    move-result-wide v2

    .line 252
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 254
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 260
    :goto_0
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    .line 264
    :goto_1
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;ZZZLcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;Lcom/avos/avoscloud/okhttp/Response;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_2
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/Call;->canceled:Z

    if-eqz v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 257
    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    goto :goto_0

    .line 274
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 275
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lcom/avos/avoscloud/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/avos/avoscloud/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 300
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v9

    .line 301
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    .line 303
    if-nez v2, :cond_6

    .line 304
    if-nez p2, :cond_3

    .line 305
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 307
    :cond_3
    return-object v9

    .line 276
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 279
    :catch_1
    move-exception v1

    .line 281
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->recover(Lcom/avos/avoscloud/okhttp/internal/http/RouteException;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_4

    .line 283
    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    goto :goto_2

    .line 287
    :cond_4
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 288
    :catch_2
    move-exception v1

    .line 290
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_5

    .line 292
    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    goto :goto_2

    .line 297
    :cond_5
    throw v1

    .line 310
    :cond_6
    add-int/lit8 v10, v0, 0x1

    const/16 v0, 0x14

    if-le v10, v0, :cond_7

    .line 311
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/avos/avoscloud/okhttp/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->close()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v6

    .line 320
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;ZZZLcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;Lcom/avos/avoscloud/okhttp/Response;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    move v0, v10

    .line 322
    goto/16 :goto_2

    :cond_9
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Call;->canceled:Z

    return v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
