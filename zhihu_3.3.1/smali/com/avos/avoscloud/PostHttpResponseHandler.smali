.class public Lcom/avos/avoscloud/PostHttpResponseHandler;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "PostHttpResponseHandler.java"


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nerror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    invoke-static {v0}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result v1

    .line 23
    if-lez v1, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 30
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 33
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    goto :goto_0
.end method
