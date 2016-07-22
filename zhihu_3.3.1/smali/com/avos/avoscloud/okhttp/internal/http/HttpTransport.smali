.class public final Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/http/Transport;


# instance fields
.field private final httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

.field private final httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    .line 33
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    .line 34
    return-void
.end method

.method private getTransferStream(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okio/Source;
    .locals 4
    .parameter

    .prologue
    .line 114
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->hasBody(Lcom/avos/avoscloud/okhttp/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newChunkedSource(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Response;)J

    move-result-wide v0

    .line 123
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newUnknownLengthSource()Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 92
    const-string v1, "close"

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getRequest()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const-string v1, "close"

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createRequestBody(Lcom/avos/avoscloud/okhttp/Request;J)Lcom/avos/avoscloud/okio/Sink;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newChunkedSink()Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newFixedLengthSink(J)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->closeIfOwnedBy(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public finishRequest()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->flush()V

    .line 53
    return-void
.end method

.method public openResponseBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 3
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->getTransferStream(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->readResponse()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->canReuseConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->poolOnIdle()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->closeOnIdle()V

    goto :goto_0
.end method

.method public writeRequestBody(Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->writeRequestBody(Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;)V

    .line 57
    return-void
.end method

.method public writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getConnection()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RequestLine;->get(Lcom/avos/avoscloud/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)V

    .line 76
    return-void
.end method
