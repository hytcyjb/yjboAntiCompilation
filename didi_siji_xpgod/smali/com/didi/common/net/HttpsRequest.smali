.class public Lcom/didi/common/net/HttpsRequest;
.super Lcom/didi/common/net/HttpResponse;
.source "HttpsRequest.java"


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
    .line 38
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/net/HttpResponse;-><init>()V

    return-void
.end method

.method private getSSslSocketFactory(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 7
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 161
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 163
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    const-string v5, "passport.diditaxi.com.cn.crt"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 164
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 165
    .local v1, cerFactory:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 167
    .local v2, certificate:Ljava/security/cert/Certificate;
    const-string v5, "PKCS12"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 168
    .local v4, keyStore:Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 169
    const-string v5, "trust"

    invoke-virtual {v4, v5, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 171
    new-instance v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v5, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v5

    .line 173
    .end local v1           #cerFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #certificate:Ljava/security/cert/Certificate;
    .end local v4           #keyStore:Ljava/security/KeyStore;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V
    .locals 4
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
    .line 56
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p4, t:Lcom/didi/common/model/BaseObject;,"TT;"
    iput-object p1, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    .line 58
    iput-object p4, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpsget-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---nettype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/common/net/HttpsRequest;->getSSslSocketFactory(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    .line 69
    .local v0, http:Lnet/tsz/afinal/FinalHttp;
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalHttp;->configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 70
    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->get(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 71
    return-void

    .line 64
    .end local v0           #http:Lnet/tsz/afinal/FinalHttp;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 5
    .parameter "throwable"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    const v4, 0x7f0b04f2

    const/4 v3, -0x1

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/net/HttpResponse;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resphttps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

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

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

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

    .line 133
    if-nez p2, :cond_0

    .line 134
    const/4 p2, -0x1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, p2}, Lcom/didi/common/model/BaseObject;->setErrorCode(I)V

    .line 138
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, p1}, Lcom/didi/common/model/BaseObject;->setThrowable(Ljava/lang/Throwable;)V

    .line 139
    if-ne p2, v3, :cond_1

    .line 140
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    if-nez v1, :cond_3

    .line 155
    :goto_1
    return-void

    .line 142
    :cond_1
    invoke-static {p2}, Lcom/didi/common/net/HttpHelper;->getHttpErrMsg(I)I

    move-result v0

    .line 143
    .local v0, rid:I
    if-ne v0, v3, :cond_2

    .line 144
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0           #rid:I
    :cond_3
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v2, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 154
    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v2, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v1, v2}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/net/HttpsRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 107
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/didi/common/net/HttpResponse;->onSuccess(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, p1}, Lcom/didi/common/model/BaseObject;->parse(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resphttps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : result ok : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    iget v1, v1, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    iget-object v1, v1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

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

    .line 113
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    iget v0, v0, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 118
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 123
    iget-object v0, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    iget-object v1, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    invoke-virtual {v0, v1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V
    .locals 4
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
    .line 86
    .local p0, this:Lcom/didi/common/net/HttpsRequest;,"Lcom/didi/common/net/HttpsRequest<TT;>;"
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p4, t:Lcom/didi/common/model/BaseObject;,"TT;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpspost-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/didi/common/util/Utils;->getUrlWithOutParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---nettype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 87
    iput-object p3, p0, Lcom/didi/common/net/HttpsRequest;->listener:Lcom/didi/common/net/ResponseListener;

    .line 88
    iput-object p4, p0, Lcom/didi/common/net/HttpsRequest;->t:Lcom/didi/common/model/BaseObject;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/didi/common/net/HttpsRequest;->url:Ljava/lang/String;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/common/net/HttpsRequest;->getSSslSocketFactory(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    .line 101
    .local v0, http:Lnet/tsz/afinal/FinalHttp;
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalHttp;->configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 102
    invoke-virtual {v0, p1, p2, p0}, Lnet/tsz/afinal/FinalHttp;->post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lnet/tsz/afinal/http/AjaxCallBack;)V

    .line 103
    return-void

    .line 96
    .end local v0           #http:Lnet/tsz/afinal/FinalHttp;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
