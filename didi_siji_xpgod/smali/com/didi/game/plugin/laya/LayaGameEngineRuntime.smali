.class public Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;
.super Lcom/didi/game/plugin/runtime/GameEngineRuntime;
.source "LayaGameEngineRuntime.java"


# static fields
.field private static final GAME_ENGINE_CLASS_NAME:Ljava/lang/String; = "com.laya.instance.GameEngine"


# instance fields
.field private gameOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gamePlayView:Landroid/view/View;

.field gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

.field isPause:Z

.field runtimeProxy:Lcom/laya/ilayaplugin/IPluginRuntimeProxy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V
    .locals 1
    .parameter "activity"
    .parameter "gamePlayerView"
    .parameter "game"
    .parameter "_gameEnginRuntimeListener"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->isPause:Z

    .line 237
    new-instance v0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$2;

    invoke-direct {v0, p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$2;-><init>(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V

    iput-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->runtimeProxy:Lcom/laya/ilayaplugin/IPluginRuntimeProxy;

    .line 46
    invoke-direct {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->tempInit()V

    .line 47
    invoke-direct {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->installPlugin()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/didi/game/plugin/service/PluginProxyLaya;

    iget-object v1, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-direct {v0, v1, v2}, Lcom/didi/game/plugin/service/PluginProxyLaya;-><init>(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    iput-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    .line 61
    return-void
.end method

.method private installPlugin()V
    .locals 8

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v5}, Lcom/didi/game/plugin/service/PluginProxy;->getJarFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v6}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.laya.instance.GameEngine"

    invoke-virtual {v4, v5, v6, v7}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 175
    .local v0, arrayOfObject:[Ljava/lang/Object;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    aput-object v5, v0, v4

    .line 176
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 177
    .local v3, localConstructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laya/ilayaplugin/IPlugin;

    .local v2, gplugin:Lcom/laya/ilayaplugin/IPlugin;
    const-string v4, "msg"

    const-string v5, "installPlugin ok"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v4, 0x64

    invoke-virtual {p0, v4, v2}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->dispatchMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #arrayOfObject:[Ljava/lang/Object;
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #gplugin:Lcom/laya/ilayaplugin/IPlugin;
    .end local v3           #localConstructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private tempInit()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "url"

    const-string v1, "http://games.layabox.com/2/index.html"

    invoke-virtual {p0, v0, v1}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispatchMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "param"
    .parameter "obj"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, localMessage:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, v0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/laya/ilayaplugin/IPlugin;

    iput-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    .line 156
    invoke-virtual {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->startGameEngin()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected loadZIP()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-interface {v2}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onStart()V

    .line 69
    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getClassByPlugin(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .local v1, pluginCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->installPlugin()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->existsPlugin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->installPlugin()V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;

    invoke-direct {v0, p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$1;-><init>(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V

    .line 102
    .local v0, loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;
    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    invoke-virtual {v2}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onShowLoadingView()V

    .line 104
    iget-object v2, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v2, v0}, Lcom/didi/game/plugin/service/PluginProxy;->load(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v0, :cond_0

    const-string v0, "msg"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v0, p1}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_configonChanged(Landroid/content/res/Configuration;)V

    .line 235
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->stop()V

    .line 223
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v0}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_onStop()V

    .line 226
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v0}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_onPause()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->isPause:Z

    .line 209
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v0}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_onResume()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->isPause:Z

    .line 217
    :cond_0
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginName"

    .prologue
    .line 199
    return-void
.end method

.method public startGameEngin()V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    invoke-virtual {v3}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onHideLoadingView()V

    .line 114
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    iget-object v4, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->runtimeProxy:Lcom/laya/ilayaplugin/IPluginRuntimeProxy;

    invoke-interface {v3, v4}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_set_runtime_proxy(Lcom/laya/ilayaplugin/IPluginRuntimeProxy;)V

    .line 116
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, localEntry:Ljava/util/Map$Entry;
    iget-object v5, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_set_option(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #itr:Ljava/util/Iterator;
    .end local v2           #localEntry:Ljava/util/Map$Entry;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 125
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameOptions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 127
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v3}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_init()V

    .line 129
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlugin:Lcom/laya/ilayaplugin/IPlugin;

    invoke-interface {v3}, Lcom/laya/ilayaplugin/IPlugin;->game_plugin_get_view()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayView:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    iget-object v4, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onShowPluginView(Landroid/view/View;)V

    .line 133
    iget-object v3, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-interface {v3}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    invoke-virtual {v0}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onHidePluginView()V

    .line 165
    return-void
.end method
