.class Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;
.super Ljava/lang/Object;
.source "EgretGameEngineRuntime.java"

# interfaces
.implements Lcom/didi/game/plugin/service/IPluginLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->loadZIP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

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

    .line 99
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;
    invoke-static {v2}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$400(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "------>EgretGameEngineRuntime call loadCallback onProgress"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    long-to-float v2, p3

    mul-float/2addr v2, v1

    long-to-float v3, p1

    div-float v0, v2, v3

    .line 102
    .local v0, progress:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;
    invoke-static {v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$500(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onLoadingProgress(I)V

    .line 105
    .end local v0           #progress:F
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "------>EgretGameEngineRuntime call loadCallback onStart"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 89
    const-string v1, "------>EgretGameEngineRuntime call loadCallback onSuccess"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v2}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$300(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/model/H5game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v1, p1, v2, v3}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #calls: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->createGameEngine(Ljava/lang/Class;)V
    invoke-static {v1, v0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$200(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;Ljava/lang/Class;)V

    .line 94
    return-void
.end method
