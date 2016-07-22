.class final Lcom/avos/avoscloud/okhttp/OkHttpClient$1;
.super Lcom/avos/avoscloud/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/avos/avoscloud/okhttp/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 93
    return-void
.end method

.method public addLenient(Lcom/avos/avoscloud/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 97
    return-void
.end method

.method public apply(Lcom/avos/avoscloud/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 148
    return-void
.end method

.method public callEngineGetConnection(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/Connection;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getConnection()Lcom/avos/avoscloud/okhttp/Connection;

    move-result-object v0

    return-object v0
.end method

.method public callEngineReleaseConnection(Lcom/avos/avoscloud/okhttp/Call;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 127
    return-void
.end method

.method public callEnqueue(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/okhttp/Call;->enqueue(Lcom/avos/avoscloud/okhttp/Callback;Z)V

    .line 123
    return-void
.end method

.method public clearOwner(Lcom/avos/avoscloud/okhttp/Connection;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->clearOwner()Z

    move-result v0

    return v0
.end method

.method public closeIfOwnedBy(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/Connection;->closeIfOwnedBy(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public connectAndSetOwner(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p2, p1, p3}, Lcom/avos/avoscloud/okhttp/Connection;->connectAndSetOwner(Lcom/avos/avoscloud/okhttp/OkHttpClient;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public connectionRawSink(Lcom/avos/avoscloud/okhttp/Connection;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->rawSink()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public connectionRawSource(Lcom/avos/avoscloud/okhttp/Connection;)Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->rawSource()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public connectionSetOwner(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/InternalCache;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->internalCache()Lcom/avos/avoscloud/okhttp/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public isReadable(Lcom/avos/avoscloud/okhttp/Connection;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->isReadable()Z

    move-result v0

    return v0
.end method

.method public newTransport(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/Connection;->newTransport(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->recycle(Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 109
    return-void
.end method

.method public recycleCount(Lcom/avos/avoscloud/okhttp/Connection;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->recycleCount()I

    move-result v0

    return v0
.end method

.method public routeDatabase(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase()Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public setCache(Lcom/avos/avoscloud/okhttp/OkHttpClient;Lcom/avos/avoscloud/okhttp/internal/InternalCache;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->setInternalCache(Lcom/avos/avoscloud/okhttp/internal/InternalCache;)V

    .line 101
    return-void
.end method

.method public setOwner(Lcom/avos/avoscloud/okhttp/Connection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
