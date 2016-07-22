.class public abstract Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;
.super Lcom/android/volley/Request;
.source "KDBaseHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KDBaseHttpRequest"


# instance fields
.field protected body:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected responseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 1
    .parameter "method"
    .parameter "body"
    .parameter "url"
    .parameter "context"
    .parameter
    .parameter "errorListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest<TT;>;"
    .local p5, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p7, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    invoke-direct {p0, p1, p3, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 31
    iput-object p2, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->body:Ljava/lang/Object;

    .line 32
    iput-object p4, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->context:Landroid/content/Context;

    .line 33
    iput-object p7, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->listener:Lcom/android/volley/Response$Listener;

    .line 34
    iput-object p5, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->responseClazz:Ljava/lang/Class;

    .line 35
    new-instance v0, Lcom/didi/ddrive/net/http/adapter/KDRetryPolicy;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/adapter/KDRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest<TT;>;"
    .local p1, response:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public getOriginBody()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->body:Ljava/lang/Object;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest<TT;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, entry:Ljava/lang/Object;,"TT;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 45
    .local v2, parsed:Ljava/lang/String;
    const-string v3, "KDBaseHttpRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http\u8fd4\u56de-> parsed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->responseClazz:Ljava/lang/Class;

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->responseClazz:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    .line 47
    iget-object v3, p0, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;->responseClazz:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .end local v1           #entry:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    .end local v2           #parsed:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 49
    .restart local v1       #entry:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 51
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
