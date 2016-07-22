.class public abstract Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/Callback;


# instance fields
.field protected callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 21
    return-void
.end method

.method static getHeaders(Lcom/avos/avoscloud/okhttp/Headers;)[Lorg/apache/http/Header;
    .locals 5
    .parameter

    .prologue
    .line 51
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v0

    new-array v1, v0, [Lorg/apache/http/Header;

    .line 53
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 60
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getCallback()Lcom/avos/avoscloud/GenericObjectCallback;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-object v0
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFailure(Lcom/avos/avoscloud/okhttp/Request;Ljava/io/IOException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->getHeaders(Lcom/avos/avoscloud/okhttp/Headers;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public onResponse(Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->getHeaders(Lcom/avos/avoscloud/okhttp/Headers;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/ResponseBody;->bytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 43
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method protected setCallback(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 33
    return-void
.end method
