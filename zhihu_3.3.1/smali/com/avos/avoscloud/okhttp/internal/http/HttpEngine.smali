.class public final Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lcom/avos/avoscloud/okhttp/ResponseBody; = null

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private address:Lcom/avos/avoscloud/okhttp/Address;

.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

.field private cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

.field private final callerWritesRequestBody:Z

.field final client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

.field private connection:Lcom/avos/avoscloud/okhttp/Connection;

.field private final forWebSocket:Z

.field private networkRequest:Lcom/avos/avoscloud/okhttp/Request;

.field private final priorResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

.field private route:Lcom/avos/avoscloud/okhttp/Route;

.field private routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private storeRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

.field private transparentGzip:Z

.field private transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

.field private final userRequest:Lcom/avos/avoscloud/okhttp/Request;

.field private userResponse:Lcom/avos/avoscloud/okhttp/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/avos/avoscloud/okhttp/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;ZZZLcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 190
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 191
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 192
    iput-boolean p3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 193
    iput-boolean p4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 194
    iput-boolean p5, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    .line 195
    iput-object p6, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 196
    iput-object p7, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    .line 197
    iput-object p8, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    .line 198
    iput-object p9, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 200
    if-eqz p6, :cond_0

    .line 201
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    invoke-virtual {v0, p6, p0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->setOwner(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V

    .line 202
    invoke-virtual {p6}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->route:Lcom/avos/avoscloud/okhttp/Route;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->route:Lcom/avos/avoscloud/okhttp/Route;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/Connection;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    return-object v0
.end method

.method static synthetic access$202(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    return-object p1
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method private cacheWritingResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 934
    if-nez p1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-object p2

    .line 935
    :cond_1
    invoke-interface {p1}, Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;->body()Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v1

    .line 939
    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    .line 941
    new-instance v2, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okio/BufferedSource;Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;Lcom/avos/avoscloud/okio/BufferedSink;)V

    .line 983
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v3

    invoke-static {v2}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object p2

    goto :goto_0
.end method

.method private static combine(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1017
    new-instance v2, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 1019
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 1020
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 1022
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1019
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1026
    :cond_2
    invoke-virtual {v2, v4, v5}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    goto :goto_1

    .line 1030
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 1031
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1032
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1030
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1035
    :cond_5
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1036
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    goto :goto_3

    .line 1040
    :cond_6
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method private connect()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->createAddress(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->address:Lcom/avos/avoscloud/okhttp/Address;

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->get(Lcom/avos/avoscloud/okhttp/Address;Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->createNextConnection()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 330
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v1, v2, p0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->connectAndSetOwner(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V

    .line 331
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->route:Lcom/avos/avoscloud/okhttp/Route;

    .line 332
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/RequestException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private connectFailed(Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 494
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Internal;->recycleCount(Lcom/avos/avoscloud/okhttp/Connection;)I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    .line 496
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/avos/avoscloud/okhttp/Route;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private static createAddress(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Address;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1132
    .line 1135
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 1137
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 1138
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getCertificatePinner()Lcom/avos/avoscloud/okhttp/CertificatePinner;

    move-result-object v7

    .line 1141
    :goto_0
    new-instance v0, Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDns()Lcom/avos/avoscloud/okhttp/Dns;

    move-result-object v3

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getAuthenticator()Lcom/avos/avoscloud/okhttp/Authenticator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/avos/avoscloud/okhttp/Address;-><init>(Ljava/lang/String;ILcom/avos/avoscloud/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/avos/avoscloud/okhttp/CertificatePinner;Lcom/avos/avoscloud/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_0
    move-object v6, v7

    move-object v5, v7

    goto :goto_0
.end method

.method private createNextConnection()Lcom/avos/avoscloud/okhttp/Connection;
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getConnectionPool()Lcom/avos/avoscloud/okhttp/ConnectionPool;

    move-result-object v1

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->get(Lcom/avos/avoscloud/okhttp/Address;)Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->isReadable(Lcom/avos/avoscloud/okhttp/Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    :cond_0
    :goto_1
    return-object v0

    .line 342
    :cond_1
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0

    .line 346
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->next()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v2

    .line 347
    new-instance v0, Lcom/avos/avoscloud/okhttp/Connection;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Connection;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Route;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static hasBody(Lcom/avos/avoscloud/okhttp/Response;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v2

    .line 668
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 671
    goto :goto_0

    .line 677
    :cond_3
    invoke-static {p0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 679
    goto :goto_0
.end method

.method private isRecoverable(Lcom/avos/avoscloud/okhttp/internal/http/RouteException;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    .line 436
    instance-of v2, v1, Ljava/net/ProtocolException;

    if-nez v2, :cond_0

    .line 442
    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    .line 443
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    goto :goto_0

    .line 448
    :cond_2
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_3

    .line 451
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 455
    :cond_3
    instance-of v1, v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_0

    .line 463
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 505
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-nez v1, :cond_0

    .line 515
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    .line 519
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeCache()V
    .locals 3

    .prologue
    .line 531
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Internal;->internalCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    move-result-object v0

    .line 532
    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->remove(Lcom/avos/avoscloud/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    goto :goto_0

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->put(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    goto :goto_0
.end method

.method private networkRequest(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 4
    .parameter

    .prologue
    .line 692
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 694
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 695
    const-string v1, "Host"

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->hostHeader(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 698
    :cond_0
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 699
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 702
    :cond_1
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 703
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 704
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_3

    .line 712
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 714
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 717
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->addCookies(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 720
    :cond_3
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 721
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 724
    :cond_4
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method private readNetworkResponse()Lcom/avos/avoscloud/okhttp/Response;
    .locals 4

    .prologue
    .line 908
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->finishRequest()V

    .line 910
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->readResponseHeaders()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Connection;->getHandshake()Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->handshake(Lcom/avos/avoscloud/okhttp/Handshake;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 917
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 918
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->openResponseBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 923
    :cond_0
    return-object v0
.end method

.method private static stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 2
    .parameter

    .prologue
    .line 311
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private unzip(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 4
    .parameter

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-object p1

    .line 642
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Lcom/avos/avoscloud/okio/GzipSource;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/GzipSource;-><init>(Lcom/avos/avoscloud/okio/Source;)V

    .line 647
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->newBuilder()Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    .line 651
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object p1

    goto :goto_0
.end method

.method private static validate(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 993
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_2

    .line 1002
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1003
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1009
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()Lcom/avos/avoscloud/okhttp/Connection;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 598
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v1, :cond_3

    .line 599
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 600
    :cond_1
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 621
    :goto_1
    return-object v0

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 605
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 608
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v1}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->canReuseConnection()Z

    move-result v1

    if-nez v1, :cond_4

    .line 609
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 610
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    goto :goto_1

    .line 615
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Internal;->clearOwner(Lcom/avos/avoscloud/okhttp/Connection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 616
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 619
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 620
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    move-object v0, v1

    .line 621
    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v0, p0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->disconnect(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 577
    if-eqz v0, :cond_0

    .line 578
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    invoke-virtual {v1, v0, p0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public followUpRequest()Lcom/avos/avoscloud/okhttp/Request;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 1060
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v2

    .line 1062
    sparse-switch v2, :sswitch_data_0

    move-object v0, v1

    .line 1116
    :goto_1
    return-object v0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 1064
    :sswitch_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    .line 1065
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_2
    :sswitch_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getAuthenticator()Lcom/avos/avoscloud/okhttp/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/avos/avoscloud/okhttp/Authenticator;Lcom/avos/avoscloud/okhttp/Response;Ljava/net/Proxy;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    goto :goto_1

    .line 1075
    :sswitch_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1076
    goto :goto_1

    .line 1084
    :cond_3
    :sswitch_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 1086
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 1088
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_1

    .line 1094
    :cond_6
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1095
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    .line 1098
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1100
    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 1101
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 1102
    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 1103
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 1109
    :cond_8
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/avos/avoscloud/okhttp/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1110
    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 1113
    :cond_9
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Lcom/avos/avoscloud/okhttp/HttpUrl;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    goto/16 :goto_1

    .line 1062
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 374
    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnection()Lcom/avos/avoscloud/okhttp/Connection;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    return-object v0
.end method

.method public getRequest()Lcom/avos/avoscloud/okhttp/Request;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    return-object v0
.end method

.method public getRequestBody()Lcom/avos/avoscloud/okio/Sink;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    return-object v0
.end method

.method public getResponse()Lcom/avos/avoscloud/okhttp/Response;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    return-object v0
.end method

.method public getRoute()Lcom/avos/avoscloud/okhttp/Route;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->route:Lcom/avos/avoscloud/okhttp/Route;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method permitsRequestBody(Lcom/avos/avoscloud/okhttp/Request;)Z
    .locals 1
    .parameter

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readResponse()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 732
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-eqz v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    if-eqz v0, :cond_0

    .line 744
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V

    .line 746
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 785
    :goto_1
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/avos/avoscloud/okhttp/Headers;)V

    .line 788
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-eqz v1, :cond_b

    .line 789
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->validate(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 790
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->combine(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->networkResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 797
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->close()V

    .line 798
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 802
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Internal;->internalCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    move-result-object v0

    .line 803
    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 804
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->update(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response;)V

    .line 805
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->unzip(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    goto/16 :goto_0

    .line 748
    :cond_3
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v0, :cond_4

    .line 749
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, p0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;ILcom/avos/avoscloud/okhttp/Request;)V

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    goto/16 :goto_1

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->buffer()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->emit()Lcom/avos/avoscloud/okio/BufferedSink;

    .line 758
    :cond_5
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 759
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    instance-of v0, v0, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_6

    .line 761
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 762
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 766
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V

    .line 770
    :cond_7
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    if-eqz v0, :cond_8

    .line 771
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    if-eqz v0, :cond_9

    .line 773
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    .line 777
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    instance-of v0, v0, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_8

    .line 778
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->writeRequestBody(Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;)V

    .line 782
    :cond_8
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    goto/16 :goto_1

    .line 775
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Sink;->close()V

    goto :goto_2

    .line 808
    :cond_a
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 812
    :cond_b
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->networkResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 819
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->hasBody(Lcom/avos/avoscloud/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 821
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheRequest;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->unzip(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lcom/avos/avoscloud/okhttp/Headers;)V
    .locals 3
    .parameter

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public recover(Lcom/avos/avoscloud/okhttp/internal/http/RouteException;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;
    .locals 10
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connectFailed(Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->isRecoverable(Lcom/avos/avoscloud/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 413
    :cond_3
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 416
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->close()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v6

    .line 419
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    iget-boolean v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object v7, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    iget-object v8, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    check-cast v8, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    iget-object v9, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;ZZZLcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;Lcom/avos/avoscloud/okhttp/Response;)V

    goto :goto_0
.end method

.method public recover(Ljava/io/IOException;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;
    .locals 1
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connectFailed(Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V

    .line 477
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_6

    .line 482
    :cond_4
    const/4 v0, 0x0

    .line 488
    :goto_1
    return-object v0

    .line 477
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 485
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->close()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v6

    .line 488
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    iget-boolean v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object v7, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    move-object v8, p2

    check-cast v8, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    iget-object v9, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;ZZZLcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;Lcom/avos/avoscloud/okhttp/Response;)V

    goto :goto_1
.end method

.method public releaseConnection()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->releaseConnectionOnIdle()V

    .line 559
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 560
    return-void
.end method

.method public sameConnection(Lcom/avos/avoscloud/okhttp/HttpUrl;)Z
    .locals 3
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    .line 226
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/internal/Internal;->internalCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_6

    invoke-interface {v3, v2}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->get(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 231
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 232
    new-instance v6, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v6, v4, v5, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)V

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    move-result-object v4

    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    .line 233
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v4, v4, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 234
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v4, v4, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 236
    if-eqz v3, :cond_3

    .line 237
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    invoke-interface {v3, v4}, Lcom/avos/avoscloud/okhttp/internal/InternalCache;->trackResponse(Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;)V

    .line 240
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v3, :cond_4

    .line 241
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-nez v0, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connect()V

    .line 250
    :cond_5
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->newTransport(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    .line 256
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    if-nez v0, :cond_0

    .line 257
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Request;)J

    move-result-wide v0

    .line 258
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v2, :cond_9

    .line 259
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, v1

    .line 227
    goto :goto_1

    .line 264
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    .line 266
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V

    .line 267
    new-instance v2, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;-><init>(I)V

    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    goto/16 :goto_0

    .line 272
    :cond_8
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    goto/16 :goto_0

    .line 275
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/avos/avoscloud/okhttp/Request;)V

    .line 276
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->transport:Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-interface {v2, v3, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/Transport;->createRequestBody(Lcom/avos/avoscloud/okhttp/Request;J)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/avos/avoscloud/okio/Sink;

    goto/16 :goto_0

    .line 282
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    if-eqz v0, :cond_b

    .line 283
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getConnectionPool()Lcom/avos/avoscloud/okhttp/ConnectionPool;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/Internal;->recycle(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 284
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-eqz v0, :cond_c

    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 306
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->unzip(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    goto/16 :goto_0

    .line 296
    :cond_c
    new-instance v0, Lcom/avos/avoscloud/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;-><init>()V

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->stripBody(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->code(I)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/avos/avoscloud/okhttp/ResponseBody;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->userResponse:Lcom/avos/avoscloud/okhttp/Response;

    goto :goto_2
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 359
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 360
    return-void
.end method
