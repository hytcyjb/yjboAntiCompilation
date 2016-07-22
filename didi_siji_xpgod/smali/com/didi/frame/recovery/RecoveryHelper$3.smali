.class Lcom/didi/frame/recovery/RecoveryHelper$3;
.super Lcom/didi/common/net/ResponseListener;
.source "RecoveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryHelper;->doRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/RecoveryConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryHelper;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryHelper$3;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryHelper$3;->onError(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 237
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryHelper$3;->onFail(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 232
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryHelper$3;->onFinish(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper$3;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-virtual {v0, p1}, Lcom/didi/frame/recovery/RecoveryHelper;->recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V

    .line 227
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/didi/common/model/RecoveryConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryHelper$3;->onSuccess(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 242
    return-void
.end method
