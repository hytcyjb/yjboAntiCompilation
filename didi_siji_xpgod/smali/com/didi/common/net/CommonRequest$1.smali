.class final Lcom/didi/common/net/CommonRequest$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/net/CommonRequest;->getConfig(Lcom/didi/common/net/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/didi/common/net/ResponseListener;


# direct methods
.method constructor <init>(Lcom/didi/common/net/ResponseListener;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/didi/common/net/CommonRequest$1;->val$listener:Lcom/didi/common/net/ResponseListener;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/didi/common/model/CommonConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/net/CommonRequest$1;->onError(Lcom/didi/common/model/CommonConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonConfig;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 423
    const-string v0, "config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonConfig;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 425
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/didi/common/model/CommonConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/net/CommonRequest$1;->onFail(Lcom/didi/common/model/CommonConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonConfig;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 429
    const-string v0, "config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonConfig;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 431
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/didi/common/model/CommonConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/net/CommonRequest$1;->onFinish(Lcom/didi/common/model/CommonConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/didi/common/net/CommonRequest$1;->val$listener:Lcom/didi/common/net/ResponseListener;

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/didi/common/net/CommonRequest$1;->val$listener:Lcom/didi/common/net/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/didi/common/model/CommonConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/net/CommonRequest$1;->onSuccess(Lcom/didi/common/model/CommonConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 414
    const-string v0, "config"

    const-string v1, "config\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    #calls: Lcom/didi/common/net/CommonRequest;->onGetConfig(Lcom/didi/common/model/CommonConfig;)V
    invoke-static {p1}, Lcom/didi/common/net/CommonRequest;->access$000(Lcom/didi/common/model/CommonConfig;)V

    .line 416
    iget-object v0, p0, Lcom/didi/common/net/CommonRequest$1;->val$listener:Lcom/didi/common/net/ResponseListener;

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/didi/common/net/CommonRequest$1;->val$listener:Lcom/didi/common/net/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    goto :goto_0
.end method
