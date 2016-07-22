.class final Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsLoadRoleInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->loadRoleInfo(Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRoleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;->onFail(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 37
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$100()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$102(I)I

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$108()I

    .line 42
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$000()Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->loadRoleInfo(Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;->onFinish(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 20
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$000()Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->access$000()Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;->onGetInfo()V

    .line 22
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;->onSuccess(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->setInstance(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    goto :goto_0
.end method
