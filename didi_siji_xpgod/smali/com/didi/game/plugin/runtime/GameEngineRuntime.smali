.class public abstract Lcom/didi/game/plugin/runtime/GameEngineRuntime;
.super Landroid/os/Handler;
.source "GameEngineRuntime.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected gameActivity:Landroid/app/Activity;

.field protected gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

.field protected gamePlayerContainer:Landroid/widget/FrameLayout;

.field protected gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

.field protected mGame:Lcom/didi/game/model/H5game;

.field protected pluginListener:Lcom/laya/iexternalinterface/PluginListener;

.field protected pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V
    .locals 1
    .parameter "activity"
    .parameter "gamePlayerView"
    .parameter "game"
    .parameter "_gameEnginRuntimeListener"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->context:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    .line 47
    iput-object p2, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gamePlayerContainer:Landroid/widget/FrameLayout;

    .line 48
    iput-object p1, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gameActivity:Landroid/app/Activity;

    .line 49
    iput-object p3, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    .line 50
    invoke-direct {p0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/laya/iexternalinterface/PluginListener;

    iget-object v1, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gameActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/laya/iexternalinterface/PluginListener;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->pluginListener:Lcom/laya/iexternalinterface/PluginListener;

    .line 59
    new-instance v0, Lcom/didi/game/ui/view/GamePlayerViewHolder;

    iget-object v1, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gameActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gamePlayerContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->pluginListener:Lcom/laya/iexternalinterface/PluginListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/game/ui/view/GamePlayerViewHolder;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/laya/iexternalinterface/IPluginListener;)V

    iput-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "param"
    .parameter "obj"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method protected existsPlugin()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v0}, Lcom/didi/game/plugin/service/PluginProxy;->existsPlugin()Z

    move-result v0

    return v0
.end method

.method protected abstract loadZIP()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    new-instance v1, Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;

    invoke-direct {v1, p0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;-><init>(Lcom/didi/game/plugin/runtime/GameEngineRuntime;)V

    invoke-virtual {v0, v1}, Lcom/didi/game/plugin/service/PluginProxy;->loadConf(Lcom/didi/game/plugin/service/IConfigLoadCallback;)V

    .line 82
    return-void
.end method

.method public abstract stop()V
.end method
