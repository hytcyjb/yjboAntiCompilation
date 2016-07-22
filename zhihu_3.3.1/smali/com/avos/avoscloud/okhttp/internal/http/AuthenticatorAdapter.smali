.class public final Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/Authenticator;


# static fields
.field public static final INSTANCE:Lcom/avos/avoscloud/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/avos/avoscloud/okhttp/Authenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/net/InetAddress;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v9

    .line 39
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v10

    .line 40
    invoke-virtual {v10}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v11

    .line 41
    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    move v8, v0

    :goto_0
    if-ge v8, v12, :cond_2

    .line 42
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/avos/avoscloud/okhttp/Challenge;

    .line 43
    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v11}, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v6

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v10}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    .line 55
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public authenticateProxy(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v9

    .line 61
    invoke-virtual {p2}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v10

    .line 62
    invoke-virtual {v10}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v11

    .line 63
    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    move v8, v0

    :goto_0
    if-ge v8, v12, :cond_2

    .line 64
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/avos/avoscloud/okhttp/Challenge;

    .line 65
    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 68
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v11}, Lcom/avos/avoscloud/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/avos/avoscloud/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v6

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v10}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    .line 79
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
