.class public Lcom/didi/ddrive/net/http/KDHttpManager;
.super Ljava/lang/Object;
.source "KDHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,
        Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;
    }
.end annotation


# static fields
.field private static driveHttpSocket:Ljava/lang/String;

.field private static driveHttpsSocket:Ljava/lang/String;

.field private static instance:Lcom/didi/ddrive/net/http/KDHttpManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpQueue:Lcom/android/volley/RequestQueue;

.field private mHttpsQueue:Lcom/android/volley/RequestQueue;

.field private mRewriter:Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;

    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mRewriter:Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;

    .line 44
    return-void
.end method

.method private addRequestToQueue(Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, request:Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest<TT;>;"
    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpsQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/didi/ddrive/net/http/KDHttpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/net/http/KDHttpManager;->instance:Lcom/didi/ddrive/net/http/KDHttpManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/didi/ddrive/net/http/KDHttpManager;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/KDHttpManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/net/http/KDHttpManager;->instance:Lcom/didi/ddrive/net/http/KDHttpManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/didi/ddrive/net/http/KDHttpManager;->instance:Lcom/didi/ddrive/net/http/KDHttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseApi(Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;)Ljava/lang/String;
    .locals 1
    .parameter "driveAnno"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;->api()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private parseUrl(Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;)Ljava/lang/String;
    .locals 5
    .parameter "driveAnno"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, url:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;->https()Z

    move-result v0

    .line 135
    .local v0, https:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v3, urlBuilder:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_1

    .line 138
    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v4, Lcom/didi/ddrive/net/http/KDHttpManager;->driveHttpsSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 146
    .end local v0           #https:Z
    .end local v1           #url:Ljava/lang/String;
    .end local v3           #urlBuilder:Ljava/lang/StringBuilder;
    .local v2, url:Ljava/lang/String;
    :goto_1
    return-object v2

    .end local v2           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 132
    .end local v1           #url:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v2           #url:Ljava/lang/String;
    .restart local v0       #https:Z
    .restart local v1       #url:Ljava/lang/String;
    .restart local v3       #urlBuilder:Ljava/lang/StringBuilder;
    :cond_1
    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    sget-object v4, Lcom/didi/ddrive/net/http/KDHttpManager;->driveHttpSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private performDriveRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V
    .locals 12
    .parameter "tag"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, request:Ljava/lang/Object;,"TT;"
    .local p3, listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<TK;>;"
    .local p4, responseClazz:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 80
    .local v9, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;

    .line 81
    .local v10, driveAnno:Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    invoke-direct {p0, v10}, Lcom/didi/ddrive/net/http/KDHttpManager;->parseUrl(Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, url:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/didi/ddrive/net/http/KDHttpManager;->parseApi(Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, api:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    new-instance v11, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;

    invoke-direct {v11, p3}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;-><init>(Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V

    .line 85
    .local v11, intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter<TK;>;"
    iget-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mRewriter:Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;

    invoke-virtual {v1, p2, v3}, Lcom/didi/ddrive/net/http/adapter/KDUrlReWriter;->rewriteUrl(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v0, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/didi/ddrive/net/http/KDHttpManager$1;

    invoke-direct {v7, p0, v11}, Lcom/didi/ddrive/net/http/KDHttpManager$1;-><init>(Lcom/didi/ddrive/net/http/KDHttpManager;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;)V

    new-instance v8, Lcom/didi/ddrive/net/http/KDHttpManager$2;

    invoke-direct {v8, p0, v11}, Lcom/didi/ddrive/net/http/KDHttpManager$2;-><init>(Lcom/didi/ddrive/net/http/KDHttpManager;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;)V

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    .line 104
    .local v0, httpRequest:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TK;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;->setTag(Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/didi/ddrive/net/http/KDHttpManager;->addRequestToQueue(Lcom/didi/ddrive/net/http/adapter/KDBaseHttpRequest;Ljava/lang/String;)V

    .line 109
    .end local v0           #httpRequest:Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest;,"Lcom/didi/ddrive/net/http/adapter/KDDriveHttpRequest<TK;>;"
    .end local v11           #intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter<TK;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clearOnApplicationQuit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 68
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpsQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 69
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initOnApplicationCreate(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDriveHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDrivePort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, driveSocket:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/gateway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/ddrive/net/http/KDHttpManager;->driveHttpSocket:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDriveHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDriveHttpsPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/gateway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/ddrive/net/http/KDHttpManager;->driveHttpsSocket:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpQueue:Lcom/android/volley/RequestQueue;

    .line 62
    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    const/4 v2, 0x0

    invoke-static {}, Lcom/didi/ddrive/net/http/KDTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/net/http/KDHttpManager;->mHttpsQueue:Lcom/android/volley/RequestQueue;

    .line 64
    return-void
.end method

.method public performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V
    .locals 0
    .parameter "tag"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<TV;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, request:Ljava/lang/Object;,"TT;"
    .local p3, listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<TV;>;"
    .local p4, responseClazz:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performDriveRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 75
    return-void
.end method
