.class public abstract Lcom/avos/avoscloud/okhttp/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/avos/avoscloud/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/avos/avoscloud/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/avos/avoscloud/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract callEngineGetConnection(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/Connection;
.end method

.method public abstract callEngineReleaseConnection(Lcom/avos/avoscloud/okhttp/Call;)V
.end method

.method public abstract callEnqueue(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;Z)V
.end method

.method public abstract clearOwner(Lcom/avos/avoscloud/okhttp/Connection;)Z
.end method

.method public abstract closeIfOwnedBy(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V
.end method

.method public abstract connectAndSetOwner(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
.end method

.method public abstract connectionRawSink(Lcom/avos/avoscloud/okhttp/Connection;)Lcom/avos/avoscloud/okio/BufferedSink;
.end method

.method public abstract connectionRawSource(Lcom/avos/avoscloud/okhttp/Connection;)Lcom/avos/avoscloud/okio/BufferedSource;
.end method

.method public abstract connectionSetOwner(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;
.end method

.method public abstract internalCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/InternalCache;
.end method

.method public abstract isReadable(Lcom/avos/avoscloud/okhttp/Connection;)Z
.end method

.method public abstract newTransport(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;
.end method

.method public abstract recycle(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;)V
.end method

.method public abstract recycleCount(Lcom/avos/avoscloud/okhttp/Connection;)I
.end method

.method public abstract routeDatabase(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;
.end method

.method public abstract setCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/internal/InternalCache;)V
.end method

.method public abstract setOwner(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
.end method
