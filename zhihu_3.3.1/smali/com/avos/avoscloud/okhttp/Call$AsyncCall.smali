.class final Lcom/avos/avoscloud/okhttp/Call$AsyncCall;
.super Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/avos/avoscloud/okhttp/Callback;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Call;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    .line 132
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->responseCallback:Lcom/avos/avoscloud/okhttp/Callback;

    .line 134
    iput-boolean p3, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->forWebSocket:Z

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;ZLcom/avos/avoscloud/okhttp/Call$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;-><init>(Lcom/avos/avoscloud/okhttp/Call;Lcom/avos/avoscloud/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->cancel()V

    .line 151
    return-void
.end method

.method protected execute()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 158
    const/4 v2, 0x0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-boolean v3, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->forWebSocket:Z

    #calls: Lcom/avos/avoscloud/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/Call;->access$100(Lcom/avos/avoscloud/okhttp/Call;Z)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 161
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-boolean v2, v3, Lcom/avos/avoscloud/okhttp/Call;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->responseCallback:Lcom/avos/avoscloud/okhttp/Callback;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v2, v2, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/avos/avoscloud/okhttp/Callback;->onFailure(Lcom/avos/avoscloud/okhttp/Request;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #getter for: Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Call;->access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->finished(Lcom/avos/avoscloud/okhttp/Call$AsyncCall;)V

    .line 179
    :goto_1
    return-void

    .line 166
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->responseCallback:Lcom/avos/avoscloud/okhttp/Callback;

    invoke-interface {v2, v0}, Lcom/avos/avoscloud/okhttp/Callback;->onResponse(Lcom/avos/avoscloud/okhttp/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :goto_2
    if-eqz v1, :cond_1

    .line 171
    :try_start_3
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #calls: Lcom/avos/avoscloud/okhttp/Call;->toLoggableString()Ljava/lang/String;
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/Call;->access$200(Lcom/avos/avoscloud/okhttp/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :goto_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #getter for: Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Call;->access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->finished(Lcom/avos/avoscloud/okhttp/Call$AsyncCall;)V

    goto :goto_1

    .line 173
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 174
    :goto_4
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->responseCallback:Lcom/avos/avoscloud/okhttp/Callback;

    invoke-interface {v2, v1, v0}, Lcom/avos/avoscloud/okhttp/Callback;->onFailure(Lcom/avos/avoscloud/okhttp/Request;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #getter for: Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/Call;->access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getDispatcher()Lcom/avos/avoscloud/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/okhttp/Dispatcher;->finished(Lcom/avos/avoscloud/okhttp/Call$AsyncCall;)V

    throw v0

    .line 173
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Call;->engine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->getRequest()Lcom/avos/avoscloud/okhttp/Request;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_4

    .line 168
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method get()Lcom/avos/avoscloud/okhttp/Call;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/avos/avoscloud/okhttp/Request;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$AsyncCall;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Call;->originalRequest:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
