.class Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;
.super Ljava/lang/Object;
.source "LayaGameEngineRuntime.java"

# interfaces
.implements Lcom/didi/game/plugin/service/IPluginLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->loadZIP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 4
    .parameter "count"
    .parameter "current"

    .prologue
    const/high16 v1, 0x42c8

    .line 91
    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;
    invoke-static {v2}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->access$100(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    long-to-float v2, p3

    mul-float/2addr v2, v1

    long-to-float v3, p1

    div-float v0, v2, v3

    .line 93
    .local v0, progress:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    const-string v1, "msg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoading.progress........."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;
    invoke-static {v1}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->access$200(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onLoadingProgress(I)V

    .line 96
    .end local v0           #progress:F
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    #calls: Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->installPlugin()V
    invoke-static {v0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->access$000(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V

    .line 88
    return-void
.end method
