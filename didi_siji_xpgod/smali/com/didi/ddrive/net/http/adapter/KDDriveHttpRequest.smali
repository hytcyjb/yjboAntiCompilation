.class public Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;
.super Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;
.source "KDDriveHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHeaderMap:Ljava/util/Map;
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


# instance fields
.field private mApi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 28
    const-class v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->TAG:Ljava/lang/String;

    .line 33
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    .line 34
    sget-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    const-string v6, "Cache-Control"

    const-string v7, "no-cache"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    const-string v6, "Accept"

    const-string v7, "*/*"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    new-instance v4, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;

    invoke-direct {v4, v0}, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;-><init>(Landroid/content/Context;)V

    .line 42
    .local v4, riskObject:Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;
    :try_start_0
    invoke-static {v4}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, json:Ljava/lang/String;
    sget-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kopds : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, encoded:Ljava/lang/String;
    sget-object v5, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    const-string v6, "kopds"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2           #encoded:Ljava/lang/String;
    .end local v3           #json:Ljava/lang/String;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 8
    .parameter "method"
    .parameter "body"
    .parameter "url"
    .parameter "api"
    .parameter "context"
    .parameter
    .parameter "errorListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
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
    .line 53
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TT;>;"
    .local p6, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p8, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;-><init>(ILjava/lang/Object;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    .line 54
    iput-object p4, p0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->mApi:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TT;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 67
    .end local p1
    :goto_0
    return-object p1

    .line 65
    .restart local p1
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBody()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TT;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, bodyInBytes:[B
    :try_start_0
    iget-object v4, p0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->body:Ljava/lang/Object;

    invoke-static {v4}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, bodyStr:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, encoded:Ljava/lang/String;
    sget-object v4, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http drive request body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    .end local v1           #bodyStr:Ljava/lang/String;
    .end local v3           #encoded:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TT;>;"
    sget-object v0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->sHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
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
    .line 87
    .local p0, this:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TT;>;"
    const/4 v3, 0x0

    .line 90
    .local v3, entry:Ljava/lang/Object;,"TT;"
    :try_start_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v6, parsed:Ljava/lang/String;
    sget-object v7, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->mApi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v7, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http drive response :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, jObj:Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, code:I
    const-string v7, "msg"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, msg:Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_1

    .line 100
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    const-string v1, "{}"

    .line 104
    :cond_0
    iget-object v7, p0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->responseClazz:Ljava/lang/Class;

    invoke-static {v1, v7}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v7

    .line 111
    .end local v0           #code:I
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #entry:Ljava/lang/Object;,"TT;"
    .end local v4           #jObj:Lorg/json/JSONObject;
    .end local v5           #msg:Ljava/lang/String;
    .end local v6           #parsed:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 107
    .restart local v0       #code:I
    .restart local v3       #entry:Ljava/lang/Object;,"TT;"
    .restart local v4       #jObj:Lorg/json/JSONObject;
    .restart local v5       #msg:Ljava/lang/String;
    .restart local v6       #parsed:Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/didi/ddrive/net/http/DriveError;

    const-string v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/didi/ddrive/net/http/DriveError;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 109
    .end local v0           #code:I
    .end local v3           #entry:Ljava/lang/Object;,"TT;"
    .end local v4           #jObj:Lorg/json/JSONObject;
    .end local v5           #msg:Ljava/lang/String;
    .end local v6           #parsed:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v7

    goto :goto_0
.end method
