.class Lcom/didi/game/plugin/service/PluginProxy$2;
.super Lnet/tsz/afinal/http/AjaxCallBack;
.source "PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/service/PluginProxy;->loadZip(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/tsz/afinal/http/AjaxCallBack",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/service/PluginProxy;

.field final synthetic val$loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/service/PluginProxy;Lcom/didi/game/plugin/service/IPluginLoadCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    iput-object p2, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->val$loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;

    invoke-direct {p0}, Lnet/tsz/afinal/http/AjaxCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0
    .parameter "t"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .line 123
    return-void
.end method

.method public onLoading(JJ)V
    .locals 1
    .parameter "count"
    .parameter "current"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->val$loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/didi/game/plugin/service/IPluginLoadCallback;->onProgress(JJ)V

    .line 119
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2
    .parameter "zip"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    #calls: Lcom/didi/game/plugin/service/PluginProxy;->execUNZip(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->access$000(Lcom/didi/game/plugin/service/PluginProxy;Ljava/io/File;)V

    .line 129
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v0}, Lcom/didi/game/plugin/service/PluginProxy;->writePreferences()V

    .line 131
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->val$loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;

    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxy$2;->this$0:Lcom/didi/game/plugin/service/PluginProxy;

    #getter for: Lcom/didi/game/plugin/service/PluginProxy;->jarFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/game/plugin/service/PluginProxy;->access$100(Lcom/didi/game/plugin/service/PluginProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/game/plugin/service/IPluginLoadCallback;->onSuccess(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$2;->onSuccess(Ljava/io/File;)V

    return-void
.end method
