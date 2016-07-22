.class public Lcom/didi/beatles/net/BtsHttpRequest;
.super Lcom/didi/common/net/HttpResponse;
.source "BtsHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">",
        "Lcom/didi/common/net/HttpResponse",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private isVerifyToken:Z

.field private listener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private t:Lcom/didi/beatles/model/BtsBaseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/net/HttpResponse;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->isVerifyToken:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 2
    .parameter "url"
    .parameter "params"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/HttpParams;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p4, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    iput-object p1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 40
    iput-object p4, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carget-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---nettype : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p3}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 45
    :cond_0
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 46
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 5
    .parameter "throwable"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    const v4, 0x7f0b0416

    const/4 v3, -0x1

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/net/HttpResponse;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respcar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : result fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errno : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errmsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    if-nez p2, :cond_0

    .line 102
    const/4 p2, -0x1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v1, p2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorCode(I)V

    .line 105
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v1, p1}, Lcom/didi/beatles/model/BtsBaseObject;->setThrowable(Ljava/lang/Throwable;)V

    .line 106
    if-ne p2, v3, :cond_1

    .line 107
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorMsg(Ljava/lang/String;)V

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    if-nez v1, :cond_3

    .line 121
    :goto_1
    return-void

    .line 109
    :cond_1
    invoke-static {p2}, Lcom/didi/common/net/HttpHelper;->getHttpErrMsg(I)I

    move-result v0

    .line 110
    .local v0, rid:I
    if-ne v0, v3, :cond_2

    .line 111
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0           #rid:I
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v2, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 120
    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v2, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/net/BtsHttpRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 74
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/didi/common/net/HttpResponse;->onSuccess(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respcar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : result ok : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    iget v1, v1, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    iget v0, v0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->isVerifyToken:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/content/Context;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 92
    iget-object v0, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 2
    .parameter "url"
    .parameter "params"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/HttpParams;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p4, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carpost-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---nettype : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 62
    iput-object p3, p0, Lcom/didi/beatles/net/BtsHttpRequest;->listener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 63
    iput-object p4, p0, Lcom/didi/beatles/net/BtsHttpRequest;->t:Lcom/didi/beatles/model/BtsBaseObject;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/didi/beatles/net/BtsRequest;->getCarBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->url:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 67
    if-eqz p3, :cond_0

    .line 68
    invoke-virtual {p3}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 69
    :cond_0
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 70
    return-void
.end method

.method public setIsVerifyToken(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 125
    .local p0, this:Lcom/didi/beatles/net/BtsHttpRequest;,"Lcom/didi/beatles/net/BtsHttpRequest<TT;>;"
    iput-boolean p1, p0, Lcom/didi/beatles/net/BtsHttpRequest;->isVerifyToken:Z

    .line 126
    return-void
.end method
