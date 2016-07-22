.class public Lcom/avos/avoscloud/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

.field private cache:Lcom/avos/avoscloud/okhttp/Cache;

.field private certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

.field private dns:Lcom/avos/avoscloud/okhttp/Dns;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private final routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v5, [Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->SPDY_3:Lcom/avos/avoscloud/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 61
    new-array v0, v5, [Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    sget-object v1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 181
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 182
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    .line 183
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 184
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    .line 185
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    .line 186
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    .line 189
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    .line 190
    new-instance v0, Lcom/avos/avoscloud/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

    .line 191
    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 181
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 182
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    .line 183
    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 184
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    .line 185
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    .line 186
    iput v2, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    .line 194
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    .line 195
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

    .line 196
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 197
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 198
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 202
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 203
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    .line 204
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Cache;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    .line 205
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 206
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 207
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 208
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    .line 209
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    .line 210
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 211
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    .line 212
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 213
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    .line 214
    iget-boolean v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 215
    iget v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    .line 216
    iget v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    .line 217
    iget v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    .line 218
    return-void

    .line 204
    :cond_0
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    goto :goto_0
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 671
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 672
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 673
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    :cond_0
    :try_start_2
    sget-object v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    .line 612
    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->clone()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method copyWithDefaults()Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;)V

    .line 621
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 622
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 624
    :cond_0
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 625
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 627
    :cond_1
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 628
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 630
    :cond_2
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 631
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 633
    :cond_3
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 634
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/avos/avoscloud/okhttp/internal/tls/OkHostnameVerifier;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 636
    :cond_4
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    if-nez v1, :cond_5

    .line 637
    sget-object v1, Lcom/avos/avoscloud/okhttp/CertificatePinner;->DEFAULT:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    .line 639
    :cond_5
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    if-nez v1, :cond_6

    .line 640
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/avos/avoscloud/okhttp/Authenticator;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    .line 642
    :cond_6
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    if-nez v1, :cond_7

    .line 643
    invoke-static {}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->getDefault()Lcom/avos/avoscloud/okhttp/ConnectionPool;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 645
    :cond_7
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez v1, :cond_8

    .line 646
    sget-object v1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 648
    :cond_8
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    if-nez v1, :cond_9

    .line 649
    sget-object v1, Lcom/avos/avoscloud/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 651
    :cond_9
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    if-nez v1, :cond_a

    .line 652
    sget-object v1, Lcom/avos/avoscloud/okhttp/Dns;->SYSTEM:Lcom/avos/avoscloud/okhttp/Dns;

    iput-object v1, v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    .line 654
    :cond_a
    return-object v0
.end method

.method public getAuthenticator()Lcom/avos/avoscloud/okhttp/Authenticator;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    return-object v0
.end method

.method public getCache()Lcom/avos/avoscloud/okhttp/Cache;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    return-object v0
.end method

.method public getCertificatePinner()Lcom/avos/avoscloud/okhttp/CertificatePinner;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public getConnectionPool()Lcom/avos/avoscloud/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

    return-object v0
.end method

.method public getDns()Lcom/avos/avoscloud/okhttp/Dns;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public getFollowSslRedirects()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    return v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lcom/avos/avoscloud/okhttp/internal/InternalCache;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;
    .locals 1
    .parameter

    .prologue
    .line 603
    new-instance v0, Lcom/avos/avoscloud/okhttp/Call;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/okhttp/Call;-><init>(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Request;)V

    return-object v0
.end method

.method routeDatabase()Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method public setAuthenticator(Lcom/avos/avoscloud/okhttp/Authenticator;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    .line 432
    return-object p0
.end method

.method public setCache(Lcom/avos/avoscloud/okhttp/Cache;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    .line 340
    return-object p0
.end method

.method public setCertificatePinner(Lcom/avos/avoscloud/okhttp/CertificatePinner;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    .line 416
    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 227
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 230
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectTimeout:I

    .line 233
    return-void
.end method

.method public setConnectionPool(Lcom/avos/avoscloud/okhttp/ConnectionPool;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionPool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 447
    return-object p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/avos/avoscloud/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 574
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 320
    return-object p0
.end method

.method public setDispatcher(Lcom/avos/avoscloud/okhttp/Dispatcher;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 2
    .parameter

    .prologue
    .line 514
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dispatcher:Lcom/avos/avoscloud/okhttp/Dispatcher;

    .line 516
    return-object p0
.end method

.method public setDns(Lcom/avos/avoscloud/okhttp/Dns;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    .line 354
    return-object p0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followRedirects:Z

    .line 473
    return-void
.end method

.method public setFollowSslRedirects(Z)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 463
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 401
    return-object p0
.end method

.method setInternalCache(Lcom/avos/avoscloud/okhttp/internal/InternalCache;)V
    .locals 1
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache:Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->cache:Lcom/avos/avoscloud/okhttp/Cache;

    .line 331
    return-void
.end method

.method public setProtocols(Ljava/util/List;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;)",
            "Lcom/avos/avoscloud/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 555
    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_0:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols must not contain http/1.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_2
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 565
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 286
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 304
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 247
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 250
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->readTimeout:I

    .line 253
    return-void
.end method

.method public setRetryOnConnectionFailure(Z)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 499
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 372
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 386
    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 265
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 268
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/OkHttpClient;->writeTimeout:I

    .line 271
    return-void
.end method
