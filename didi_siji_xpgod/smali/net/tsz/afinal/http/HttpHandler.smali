.class public Lnet/tsz/afinal/http/HttpHandler;
.super Lnet/tsz/afinal/core/AsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lnet/tsz/afinal/http/entityhandler/EntityCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/tsz/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lnet/tsz/afinal/http/entityhandler/EntityCallBack;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4


# instance fields
.field private final callback:Lnet/tsz/afinal/http/AjaxCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isResume:Z

.field private final mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

.field private final mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

.field private targetUrl:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lnet/tsz/afinal/http/AjaxCallBack;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "context"
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    .local p3, callback:Lnet/tsz/afinal/http/AjaxCallBack;,"Lnet/tsz/afinal/http/AjaxCallBack<TT;>;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lnet/tsz/afinal/core/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    invoke-direct {v0}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    .line 45
    new-instance v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    invoke-direct {v0}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    .line 49
    iput v1, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    .line 55
    iput-object p1, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 56
    iput-object p2, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 57
    iput-object p3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    .line 58
    iput-object p4, p0, Lnet/tsz/afinal/http/HttpHandler;->charset:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)V
    .locals 13
    .parameter "response"

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 169
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 170
    .local v4, status:Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_1

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response status error code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, errorMsg:Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x1a0

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    if-eqz v5, :cond_0

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " \n maybe you have download complete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_0
    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    aput-object v6, v5, v10

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 197
    .end local v2           #errorMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 178
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 179
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 180
    .local v3, responseBody:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    .line 182
    iget-object v5, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 183
    iget-object v5, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    iget-object v6, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    iget-boolean v7, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    invoke-virtual {v5, v1, p0, v6, v7}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    .line 190
    .end local v3           #responseBody:Ljava/lang/Object;
    :cond_2
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #responseBody:Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lnet/tsz/afinal/http/HttpHandler;->mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    iget-object v6, p0, Lnet/tsz/afinal/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v5, v1, p0, v6}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method private makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 13
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 63
    iget-boolean v8, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 64
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, downloadFile:Ljava/io/File;
    const-wide/16 v3, 0x0

    .line 66
    .local v3, fileLen:J
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 69
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_1

    .line 70
    const-string v8, "RANGE"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v1           #downloadFile:Ljava/io/File;
    .end local v3           #fileLen:J
    :cond_1
    const/4 v6, 0x1

    .line 74
    .local v6, retry:Z
    const/4 v0, 0x0

    .line 75
    .local v0, cause:Ljava/io/IOException;
    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v7

    .line 76
    .local v7, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-nez v6, :cond_2

    .line 101
    if-eqz v0, :cond_4

    .line 102
    throw v0

    .line 78
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 79
    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v8, p1, v9}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 80
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 81
    invoke-direct {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "unknownHostException\uff1acan\'t resolve host"

    aput-object v9, v8, v12

    invoke-virtual {p0, v8}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 89
    .local v2, e:Ljava/io/IOException;
    move-object v0, v2

    .line 90
    iget v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v7, v0, v8, v9}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    goto :goto_0

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "NPE in HttpClient"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v0       #cause:Ljava/io/IOException;
    iget v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v7, v0, v8, v9}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    goto :goto_0

    .line 96
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #cause:Ljava/io/IOException;
    iget v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v7, v0, v8, v9}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    goto/16 :goto_0

    .line 104
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v8, Ljava/io/IOException;

    const-string v9, "\u672a\u77e5\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public callBack(JJZ)V
    .locals 10
    .parameter "count"
    .parameter "current"
    .parameter "mustNoticeUI"

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 203
    iget-object v2, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v2}, Lnet/tsz/afinal/http/AjaxCallBack;->isProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    if-eqz p5, :cond_1

    .line 205
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, thisTime:J
    iget-wide v2, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v4}, Lnet/tsz/afinal/http/AjaxCallBack;->getRate()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 209
    iput-wide v0, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    .line 210
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "params"

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ne v1, v6, :cond_0

    .line 110
    aget-object v1, p1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    .line 111
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    .line 114
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 115
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1}, Lnet/tsz/afinal/http/HttpHandler;->makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 157
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    invoke-virtual {v0}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->isStop()Z

    move-result v0

    return v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 6
    .parameter "values"

    .prologue
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 132
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, update:I
    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 154
    return-void

    .line 135
    :pswitch_0
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v1}, Lnet/tsz/afinal/http/AjaxCallBack;->onStart()V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/tsz/afinal/http/AjaxCallBack;->onLoading(JJ)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 144
    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, Lnet/tsz/afinal/http/AjaxCallBack;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/http/AjaxCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 165
    .local p0, this:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->setStop(Z)V

    .line 166
    return-void
.end method
