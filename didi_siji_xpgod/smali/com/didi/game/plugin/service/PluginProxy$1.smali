.class Lcom/didi/game/plugin/service/PluginProxy$1;
.super Lcom/didi/common/net/ResponseListener;
.source "PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/service/PluginProxy;->loadConfig(Lcom/didi/game/plugin/service/IConfigLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonBizPlugConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/service/PluginProxy;

.field final synthetic val$cback:Lcom/didi/game/plugin/service/IConfigLoadCallback;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/service/PluginProxy;Lcom/didi/game/plugin/service/IConfigLoadCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    iput-object p2, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->val$cback:Lcom/didi/game/plugin/service/IConfigLoadCallback;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/didi/common/model/CommonBizPlugConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$1;->onError(Lcom/didi/common/model/CommonBizPlugConfig;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonBizPlugConfig;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V

    .line 96
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->val$cback:Lcom/didi/game/plugin/service/IConfigLoadCallback;

    const/16 v1, 0x3e9

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/didi/game/plugin/service/IConfigLoadCallback;->onFailure(ILjava/lang/String;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/didi/common/model/CommonBizPlugConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$1;->onFail(Lcom/didi/common/model/CommonBizPlugConfig;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonBizPlugConfig;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V

    .line 102
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->val$cback:Lcom/didi/game/plugin/service/IConfigLoadCallback;

    const/16 v1, 0x3e9

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/didi/game/plugin/service/IConfigLoadCallback;->onFailure(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/didi/common/model/CommonBizPlugConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$1;->onSuccess(Lcom/didi/common/model/CommonBizPlugConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonBizPlugConfig;)V
    .locals 1
    .parameter "conf"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V

    .line 90
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$1;->val$cback:Lcom/didi/game/plugin/service/IConfigLoadCallback;

    invoke-interface {v0}, Lcom/didi/game/plugin/service/IConfigLoadCallback;->onSuccess()V

    .line 91
    return-void
.end method
