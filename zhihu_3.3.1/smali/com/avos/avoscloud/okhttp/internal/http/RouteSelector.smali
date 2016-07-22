.class public final Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lcom/avos/avoscloud/okhttp/Address;

.field private final client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

.field private final url:Lcom/avos/avoscloud/okhttp/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Address;Lcom/avos/avoscloud/okhttp/HttpUrl;Lcom/avos/avoscloud/okhttp/OkHttpClient;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    .line 65
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    .line 66
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 67
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/Internal;->routeDatabase(Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    .line 69
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->resetNextProxy(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/net/Proxy;)V

    .line 70
    return-void
.end method

.method public static get(Lcom/avos/avoscloud/okhttp/Address;Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/OkHttpClient;)Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;-><init>(Lcom/avos/avoscloud/okhttp/Address;Lcom/avos/avoscloud/okhttp/HttpUrl;Lcom/avos/avoscloud/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private nextPostponed()Lcom/avos/avoscloud/okhttp/Route;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 3

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 154
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 155
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 165
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getUriPort()I

    move-result v0

    move v3, v0

    move-object v0, v1

    .line 179
    :goto_0
    const/4 v1, 0x1

    if-lt v3, v1, :cond_1

    const v1, 0xffff

    if-le v3, v1, :cond_4

    .line 180
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; port is out of range"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 170
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 175
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    move-object v0, v1

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Address;->getDns()Lcom/avos/avoscloud/okhttp/Dns;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okhttp/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 186
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_5

    .line 187
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 188
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 191
    :cond_5
    iput v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    .line 192
    return-void
.end method

.method private resetNextProxy(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/net/Proxy;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 128
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 139
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    .line 140
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lcom/avos/avoscloud/okhttp/Route;Ljava/io/IOException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;->failed(Lcom/avos/avoscloud/okhttp/Route;)V

    .line 122
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/avos/avoscloud/okhttp/Route;
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    .line 107
    :cond_1
    :goto_0
    return-object v0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 100
    new-instance v0, Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/okhttp/Route;-><init>(Lcom/avos/avoscloud/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 101
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/avos/avoscloud/okhttp/Route;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteSelector;->next()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v0

    goto :goto_0
.end method
