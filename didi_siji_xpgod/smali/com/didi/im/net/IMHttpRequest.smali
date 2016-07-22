.class public Lcom/didi/im/net/IMHttpRequest;
.super Lcom/didi/common/net/HttpResponse;
.source "IMHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/common/model/BaseObject;",
        ">",
        "Lcom/didi/common/net/HttpResponse",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/didi/common/net/ResponseListener;

.field private t:Lcom/didi/common/model/BaseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/net/HttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V
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
            "Lcom/didi/common/net/ResponseListener",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p4, t:Lcom/didi/common/model/BaseObject;,"TT;"
    iput-object p1, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    .line 45
    iput-object p4, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    .line 46
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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imget-"

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

    .line 48
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 49
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 5
    .parameter "throwable"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    const v4, 0x7f0b0416

    const/4 v3, -0x1

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/net/HttpResponse;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

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

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

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

    .line 102
    if-nez p2, :cond_0

    .line 103
    const/4 p2, -0x1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, p2}, Lcom/didi/common/model/BaseObject;->setErrorCode(I)V

    .line 107
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, p1}, Lcom/didi/common/model/BaseObject;->setThrowable(Ljava/lang/Throwable;)V

    .line 108
    if-ne p2, v3, :cond_1

    .line 109
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    if-nez v1, :cond_3

    .line 123
    :goto_1
    return-void

    .line 111
    :cond_1
    invoke-static {p2}, Lcom/didi/common/net/HttpHelper;->getHttpErrMsg(I)I

    move-result v0

    .line 112
    .local v0, rid:I
    if-ne v0, v3, :cond_2

    .line 113
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0           #rid:I
    :cond_3
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v2, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 122
    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v2, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/im/net/IMHttpRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 76
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/didi/common/net/HttpResponse;->onSuccess(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, p1}, Lcom/didi/common/model/BaseObject;->parse(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : result ok : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    iget v1, v1, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    iget-object v1, v1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

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

    .line 82
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 87
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 92
    iget-object v0, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V
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
            "Lcom/didi/common/net/ResponseListener",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/didi/im/net/IMHttpRequest;,"Lcom/didi/im/net/IMHttpRequest<TT;>;"
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p4, t:Lcom/didi/common/model/BaseObject;,"TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "impost-"

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

    .line 65
    iput-object p3, p0, Lcom/didi/im/net/IMHttpRequest;->listener:Lcom/didi/common/net/ResponseListener;

    .line 66
    iput-object p4, p0, Lcom/didi/im/net/IMHttpRequest;->t:Lcom/didi/common/model/BaseObject;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/didi/im/net/IMRequest;->getTaxiBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/didi/im/net/IMHttpRequest;->url:Ljava/lang/String;

    .line 69
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

    .line 71
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 72
    return-void
.end method
