.class public Lnet/tsz/afinal/FinalHttp;
.super Ljava/lang/Object;
.source "FinalHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/FinalHttp$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final executor:Ljava/util/concurrent/Executor;

.field private static httpThreadCount:I

.field private static mFinalHttp:Lnet/tsz/afinal/FinalHttp;

.field private static maxConnections:I

.field private static maxRetries:I

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static socketTimeout:I


# instance fields
.field private charset:Ljava/lang/String;

.field private final clientHeaderMap:Ljava/util/Map;
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

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const/16 v0, 0xa

    sput v0, Lnet/tsz/afinal/FinalHttp;->maxConnections:I

    .line 76
    const/16 v0, 0x2710

    sput v0, Lnet/tsz/afinal/FinalHttp;->socketTimeout:I

    .line 77
    const/4 v0, 0x5

    sput v0, Lnet/tsz/afinal/FinalHttp;->maxRetries:I

    .line 78
    const/4 v0, 0x3

    sput v0, Lnet/tsz/afinal/FinalHttp;->httpThreadCount:I

    .line 86
    new-instance v0, Lnet/tsz/afinal/FinalHttp;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalHttp;-><init>()V

    sput-object v0, Lnet/tsz/afinal/FinalHttp;->mFinalHttp:Lnet/tsz/afinal/FinalHttp;

    .line 88
    new-instance v0, Lnet/tsz/afinal/FinalHttp$1;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalHttp$1;-><init>()V

    sput-object v0, Lnet/tsz/afinal/FinalHttp;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 100
    sget v0, Lnet/tsz/afinal/FinalHttp;->httpThreadCount:I

    sget-object v1, Lnet/tsz/afinal/FinalHttp;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/tsz/afinal/FinalHttp;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v3, "utf-8"

    iput-object v3, p0, Lnet/tsz/afinal/FinalHttp;->charset:Ljava/lang/String;

    .line 103
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 105
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v3, Lnet/tsz/afinal/FinalHttp;->socketTimeout:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 106
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v4, Lnet/tsz/afinal/FinalHttp;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 107
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    sget v3, Lnet/tsz/afinal/FinalHttp;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    sget v3, Lnet/tsz/afinal/FinalHttp;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 112
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 116
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 117
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 118
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 119
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 121
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 122
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 123
    iget-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lnet/tsz/afinal/FinalHttp$2;

    invoke-direct {v4, p0}, Lnet/tsz/afinal/FinalHttp$2;-><init>(Lnet/tsz/afinal/FinalHttp;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 134
    iget-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lnet/tsz/afinal/FinalHttp$3;

    invoke-direct {v4, p0}, Lnet/tsz/afinal/FinalHttp$3;-><init>(Lnet/tsz/afinal/FinalHttp;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 152
    iget-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lnet/tsz/afinal/http/RetryHandler;

    sget v5, Lnet/tsz/afinal/FinalHttp;->maxRetries:I

    invoke-direct {v4, v5}, Lnet/tsz/afinal/http/RetryHandler;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lnet/tsz/afinal/FinalHttp;->clientHeaderMap:Ljava/util/Map;

    .line 156
    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/FinalHttp;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 427
    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 431
    :cond_0
    return-object p1
.end method

.method public static getInstance()Lnet/tsz/afinal/FinalHttp;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lnet/tsz/afinal/FinalHttp;->mFinalHttp:Lnet/tsz/afinal/FinalHttp;

    return-object v0
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Lnet/tsz/afinal/http/AjaxParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, paramString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 413
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p1}, Lnet/tsz/afinal/http/AjaxParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 423
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 215
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public configCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "charSet"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput-object p1, p0, Lnet/tsz/afinal/FinalHttp;->charset:Ljava/lang/String;

    .line 169
    :cond_0
    return-void
.end method

.method public configCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 172
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public configRequestExecutionRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 206
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lnet/tsz/afinal/http/RetryHandler;

    invoke-direct {v1, p1}, Lnet/tsz/afinal/http/RetryHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 207
    return-void
.end method

.method public configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 3
    .parameter "sslSocketFactory"

    .prologue
    .line 197
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 198
    .local v0, scheme:Lorg/apache/http/conn/scheme/Scheme;
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 199
    return-void
.end method

.method public configTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 186
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 187
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 188
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 189
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 190
    return-void
.end method

.method public configUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 177
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public delete(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 351
    return-void
.end method

.method public delete(Ljava/lang/String;[Lorg/apache/http/Header;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "headers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p3, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 355
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 357
    return-void
.end method

.method public deleteSync(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/tsz/afinal/FinalHttp;->deleteSync(Ljava/lang/String;[Lorg/apache/http/Header;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deleteSync(Ljava/lang/String;[Lorg/apache/http/Header;)Ljava/lang/Object;
    .locals 4
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 364
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;
    .locals 6
    .parameter "url"
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lnet/tsz/afinal/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p3, callback:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<Ljava/io/File;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;
    .locals 6
    .parameter "url"
    .parameter "target"
    .parameter "isResume"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lnet/tsz/afinal/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    .local p4, callback:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<Ljava/io/File;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;
    .locals 6
    .parameter "url"
    .parameter "params"
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lnet/tsz/afinal/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    .local p4, callback:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<Ljava/io/File;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;
    .locals 6
    .parameter "url"
    .parameter "params"
    .parameter "target"
    .parameter "isResume"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Ljava/lang/String;",
            "Z",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lnet/tsz/afinal/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    .local p5, callback:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<Ljava/io/File;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lnet/tsz/afinal/FinalHttp;->getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lnet/tsz/afinal/http/HttpHandler;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lnet/tsz/afinal/FinalHttp;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p5, v4}, Lnet/tsz/afinal/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lnet/tsz/afinal/http/AjaxCallBack;Ljava/lang/String;)V

    .line 386
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    sget-object v2, Lnet/tsz/afinal/FinalHttp;->executor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 387
    return-object v1
.end method

.method public get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/tsz/afinal/FinalHttp;->get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 224
    return-void
.end method

.method public get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p3, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lnet/tsz/afinal/FinalHttp;->getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 228
    return-void
.end method

.method public get(Ljava/lang/String;[Lorg/apache/http/Header;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p4, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lnet/tsz/afinal/FinalHttp;->getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_0

    invoke-interface {v3, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 234
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getSync(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/tsz/afinal/FinalHttp;->getSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;
    .locals 4
    .parameter "url"
    .parameter "params"

    .prologue
    .line 241
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p2}, Lnet/tsz/afinal/FinalHttp;->getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, request:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getSync(Ljava/lang/String;[Lorg/apache/http/Header;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;
    .locals 4
    .parameter "url"
    .parameter "headers"
    .parameter "params"

    .prologue
    .line 247
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lnet/tsz/afinal/FinalHttp;->getUrlWithQueryString(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/tsz/afinal/FinalHttp;->post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 256
    return-void
.end method

.method public post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 2
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p3, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lnet/tsz/afinal/FinalHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 260
    return-void
.end method

.method public post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p4, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 264
    return-void
.end method

.method public post(Ljava/lang/String;[Lorg/apache/http/Header;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p5, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<TT;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 269
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 270
    :cond_1
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 271
    return-void
.end method

.method public post(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p5, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 275
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 277
    return-void
.end method

.method public postSync(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/tsz/afinal/FinalHttp;->postSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;
    .locals 2
    .parameter "url"
    .parameter "params"

    .prologue
    .line 285
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/tsz/afinal/FinalHttp;->postSync(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"

    .prologue
    .line 289
    iget-object v0, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Ljava/lang/String;[Lorg/apache/http/Header;Lnet/tsz/afinal/http/AjaxParams;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"

    .prologue
    .line 294
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 296
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 297
    :cond_1
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public postSync(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"

    .prologue
    .line 301
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    .line 302
    .local v0, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/tsz/afinal/FinalHttp;->put(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 311
    return-void
.end method

.method public put(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 2
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxParams;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lnet/tsz/afinal/FinalHttp;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 316
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p4, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 320
    return-void
.end method

.method public put(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 6
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p5, callBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 324
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p2, :cond_0

    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 325
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/tsz/afinal/FinalHttp;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 326
    return-void
.end method

.method public putSync(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/tsz/afinal/FinalHttp;->putSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putSync(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/Object;
    .locals 2
    .parameter "url"
    .parameter "params"

    .prologue
    .line 333
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalHttp;->paramsToEntity(Lnet/tsz/afinal/http/AjaxParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/tsz/afinal/FinalHttp;->putSync(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putSync(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/tsz/afinal/FinalHttp;->putSync(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putSync(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"

    .prologue
    .line 342
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lnet/tsz/afinal/FinalHttp;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    .line 343
    .local v0, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 344
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lnet/tsz/afinal/FinalHttp;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v2, v0, p4}, Lnet/tsz/afinal/FinalHttp;->sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)V
    .locals 4
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/impl/client/DefaultHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p5, ajaxCallBack:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<TT;>;"
    if-eqz p4, :cond_0

    .line 393
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    new-instance v0, Lnet/tsz/afinal/http/HttpHandler;

    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->charset:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p5, v1}, Lnet/tsz/afinal/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lnet/tsz/afinal/http/AjaxCallBack;Ljava/lang/String;)V

    .line 397
    sget-object v1, Lnet/tsz/afinal/FinalHttp;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    .line 399
    return-void
.end method

.method protected sendSyncRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"

    .prologue
    .line 402
    if-eqz p4, :cond_0

    .line 403
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    new-instance v0, Lnet/tsz/afinal/http/SyncRequestHandler;

    iget-object v1, p0, Lnet/tsz/afinal/FinalHttp;->charset:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lnet/tsz/afinal/http/SyncRequestHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/http/SyncRequestHandler;->sendRequest([Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
