.class public final Lcom/avos/avoscloud/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method static get(Lcom/avos/avoscloud/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lcom/avos/avoscloud/okhttp/Request;Ljava/net/Proxy$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    :goto_0
    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/RequestLine;->requestPath(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static includeAuthorityInRequestLine(Lcom/avos/avoscloud/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Request;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestPath(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
