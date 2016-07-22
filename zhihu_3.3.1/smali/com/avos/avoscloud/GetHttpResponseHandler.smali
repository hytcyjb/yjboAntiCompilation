.class public Lcom/avos/avoscloud/GetHttpResponseHandler;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "GetHttpResponseHandler.java"


# instance fields
.field private absoluteURLString:Ljava/lang/String;

.field private policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 11
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 22
    iput-object p2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 23
    iput-object p3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/GetHttpResponseHandler;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    return-object v0
.end method

.method private isNotModifiedStatus(I)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnAuthorize(I)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryLastModifyCache(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 38
    :cond_0
    if-nez p1, :cond_2

    .line 39
    const-string v0, "null last-modified value"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 43
    :cond_1
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    new-instance v5, Lcom/avos/avoscloud/GetHttpResponseHandler$1;

    invoke-direct {v5, p0}, Lcom/avos/avoscloud/GetHttpResponseHandler$1;-><init>(Lcom/avos/avoscloud/GetHttpResponseHandler;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isUnAuthorize(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nerror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
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

    .line 119
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    :cond_2
    :goto_0
    return-void

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isNotModifiedStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "Last modify matched."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->tryLastModifyCache(Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-static {v0}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result v1

    .line 79
    if-lez v1, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    sget-object v2, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 87
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v4}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 99
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 102
    :cond_7
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    goto :goto_0
.end method
