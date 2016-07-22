.class Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;
.super Lcom/didi/common/net/ResponseListener;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->onPostRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonUpdateConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;


# direct methods
.method constructor <init>(Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->this$1:Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Lcom/didi/common/model/CommonUpdateConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->onError(Lcom/didi/common/model/CommonUpdateConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonUpdateConfig;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 216
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 217
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 218
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Lcom/didi/common/model/CommonUpdateConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->onFail(Lcom/didi/common/model/CommonUpdateConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonUpdateConfig;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 210
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 211
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 212
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Lcom/didi/common/model/CommonUpdateConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->onFinish(Lcom/didi/common/model/CommonUpdateConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonUpdateConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->this$1:Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;

    iget-object v0, v0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->this$0:Lcom/didi/common/download/UpdateHelper;

    #setter for: Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;
    invoke-static {v0, p1}, Lcom/didi/common/download/UpdateHelper;->access$602(Lcom/didi/common/download/UpdateHelper;Lcom/didi/common/model/CommonUpdateConfig;)Lcom/didi/common/model/CommonUpdateConfig;

    .line 204
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 205
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;->this$1:Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;

    iget-object v0, v0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->this$0:Lcom/didi/common/download/UpdateHelper;

    #calls: Lcom/didi/common/download/UpdateHelper;->tackleResult()V
    invoke-static {v0}, Lcom/didi/common/download/UpdateHelper;->access$700(Lcom/didi/common/download/UpdateHelper;)V

    .line 206
    return-void
.end method
