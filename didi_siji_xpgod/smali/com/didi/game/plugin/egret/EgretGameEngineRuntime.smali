.class public Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;
.super Lcom/didi/game/plugin/runtime/GameEngineRuntime;
.source "EgretGameEngineRuntime.java"


# static fields
.field private static final ENGINE_OPTIONS_LIBRARY_LOADER_TYPE:Ljava/lang/String; = "2"

.field private static final ENGINE_OPTIONS_SIPID:Ljava/lang/String; = "10269"

.field private static final GAME_ENGINE_CLASS_NAME:Ljava/lang/String; = "org.egret.egretframeworknative.engine.EgretGameEngine"

.field private static final USER_LOGIN_FAILED:Ljava/lang/String; = "-1"

.field private static final USER_LOGIN_SUCC:Ljava/lang/String; = "0"


# instance fields
.field private gameEngine:Ljava/lang/Object;

.field private gameEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V
    .locals 0
    .parameter "activity"
    .parameter "gamePlayerView"
    .parameter "game"
    .parameter "_gameEnginRuntimeListener"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V

    .line 50
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/plugin/service/PluginProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/model/H5game;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;Ljava/lang/Class;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->createGameEngine(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/model/H5game;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/ui/view/GamePlayerViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    return-object v0
.end method

.method private callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 265
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object v2

    .line 271
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngineClass:Ljava/lang/Class;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 272
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 273
    .local v2, obj:Ljava/lang/Object;
    goto :goto_0

    .line 275
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private callInitRuntime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    .line 241
    .local v1, initParams:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    aput-object v2, v0, v3

    .line 242
    .local v0, initArgs:[Ljava/lang/Object;
    const-string v2, "game_engine_init"

    invoke-direct {p0, v2, v1, v0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private callSetGameOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>h5game:egret.runtime.egretRoot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v4}, Lcom/didi/game/plugin/service/PluginProxy;->getPluginRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>h5game:egret.runtime.loaderUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>h5game:egret.runtime.updateUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>h5game:egret.runtime.sopath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v4}, Lcom/didi/game/plugin/service/PluginProxy;->getSoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>h5game:egret.runtime.gameId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v1, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "egret.runtime.egretRoot"

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v4}, Lcom/didi/game/plugin/service/PluginProxy;->getPluginRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "egret.runtime.gameId"

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "egret.runtime.loaderUrl"

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v3, "egret.runtime.updateUrl"

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v3, "egret.runtime.libraryLoaderType"

    const-string v4, "2"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v3, "egret.runtime.sopath"

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v4}, Lcom/didi/game/plugin/service/PluginProxy;->getSoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v3, "egret.runtime.spid"

    const-string v4, "10269"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v3, "egret.runtime.nest"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v3, "egret.runtime.channelTag"

    const-string v4, "didi"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    .line 216
    .local v0, args:[Ljava/lang/Object;
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/util/HashMap;

    aput-object v3, v2, v5

    .line 217
    .local v2, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v3, "game_engine_set_options"

    invoke-direct {p0, v3, v2, v0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private callSetLoadingView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    new-instance v3, Lcom/didi/game/ui/view/GameLoadingView;

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/didi/game/ui/view/GameLoadingView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v3, loadingView:Lcom/didi/game/ui/view/GameLoadingView;
    new-array v2, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v5

    .line 227
    .local v2, loadingParams:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v3, v1, v5

    .line 229
    .local v1, loadingArgs:[Ljava/lang/Object;
    const-string v4, "game_engine_set_loading_view"

    invoke-direct {p0, v4, v2, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-array v0, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v0, v5

    .line 232
    .local v0, listenerParams:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v4, "game_engine_set_game_zip_update_listener"

    invoke-direct {p0, v4, v0, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method private callSetRuntimeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const-string v1, "game_engine_get_view"

    invoke-direct {p0, v1, v2, v2}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    .local v0, gamePlayerView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    invoke-virtual {v1, v0}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onShowPluginView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-interface {v1}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onSuccess()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createGameEngine(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, _gameEngineClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "------>EgretGameEngineRuntime createGameEngine"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 310
    :try_start_0
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngineClass:Ljava/lang/Class;

    .line 311
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngineClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, engine:Ljava/lang/Object;
    const/16 v2, 0x64

    invoke-virtual {p0, v2, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->dispatchMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1           #engine:Ljava/lang/Object;
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/didi/game/plugin/service/PluginProxyEgret;

    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-direct {v0, v1, v2}, Lcom/didi/game/plugin/service/PluginProxyEgret;-><init>(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    .line 59
    return-void
.end method

.method private invokeGameEngineMethods()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callSetGameOptions()V

    .line 143
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callSetLoadingView()V

    .line 145
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callInitRuntime()V

    .line 147
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callSetRuntimeView()V

    .line 149
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->registerPluginCallback()V

    .line 150
    return-void
.end method

.method private registerPluginCallback()V
    .locals 5

    .prologue
    .line 160
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v1

    .line 161
    .local v1, user:Lcom/didi/common/ui/userinfo/UserInfo;
    new-instance v0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;

    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-direct {v0, v2, v3}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;-><init>(Landroid/app/Activity;Lcom/didi/game/model/H5game;)V

    .line 163
    .local v0, nestLoginProxy:Lcom/didi/game/plugin/egret/module/NestLoginImpl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----->EgretGameEngineRuntime user != null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 164
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setUserName(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setToken(Ljava/lang/String;)V

    .line 167
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setResult(Ljava/lang/String;)V

    .line 173
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----->EgretGameEngineRuntime token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    const-string v2, "user"

    invoke-static {v2, v0}, Lcom/didi/game/plugin/egret/EgretUtils;->registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v2, "iap"

    new-instance v3, Lcom/didi/game/plugin/egret/module/NestPayImpl;

    iget-object v4, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/didi/game/plugin/egret/module/NestPayImpl;-><init>(Landroid/app/Activity;)V

    invoke-static {v2, v3}, Lcom/didi/game/plugin/egret/EgretUtils;->registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v2, "app"

    new-instance v3, Lcom/didi/game/plugin/egret/module/NestAppImpl;

    invoke-direct {v3}, Lcom/didi/game/plugin/egret/module/NestAppImpl;-><init>()V

    invoke-static {v2, v3}, Lcom/didi/game/plugin/egret/EgretUtils;->registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v2, "share"

    new-instance v3, Lcom/didi/game/plugin/egret/module/NestShareImpl;

    invoke-direct {v3}, Lcom/didi/game/plugin/egret/module/NestShareImpl;-><init>()V

    invoke-static {v2, v3}, Lcom/didi/game/plugin/egret/EgretUtils;->registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v2, "social"

    new-instance v3, Lcom/didi/game/plugin/egret/module/NestSocialImpl;

    invoke-direct {v3}, Lcom/didi/game/plugin/egret/module/NestSocialImpl;-><init>()V

    invoke-static {v2, v3}, Lcom/didi/game/plugin/egret/EgretUtils;->registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 169
    :cond_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setUserName(Ljava/lang/String;)V

    .line 170
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setToken(Ljava/lang/String;)V

    .line 171
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->setResult(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------>EgretGameEngineRuntime handleMessage what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->startGameEngin()V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected loadZIP()V
    .locals 5

    .prologue
    .line 65
    const-string v2, "------>EgretGameEngineRuntime call loadZIP"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-interface {v2}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onStart()V

    .line 68
    invoke-static {}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getClassByPlugin(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    .local v1, pluginCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->createGameEngine(Ljava/lang/Class;)V

    .line 117
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "------>EgretGameEngineRuntime call loadZIP111"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v2}, Lcom/didi/game/plugin/service/PluginProxy;->isDownloadNewZIP()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->existsPlugin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "------>EgretGameEngineRuntime call loadZIP222"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 77
    new-instance v2, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;

    invoke-direct {v2, p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;-><init>(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "------>EgretGameEngineRuntime call loadZIP333"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;

    invoke-direct {v0, p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$2;-><init>(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)V

    .line 113
    .local v0, loadCallback:Lcom/didi/game/plugin/service/IPluginLoadCallback;
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gamePlayerViewHolder:Lcom/didi/game/ui/view/GamePlayerViewHolder;

    invoke-virtual {v2}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->onShowLoadingView()V

    .line 115
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;

    invoke-virtual {v2, v0}, Lcom/didi/game/plugin/service/PluginProxy;->load(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->stop()V

    .line 346
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "game_engine_onPause"

    invoke-direct {p0, v0, v1, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "game_engine_onResume"

    invoke-direct {p0, v0, v1, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    return-void
.end method

.method public startGameEngin()V
    .locals 1

    .prologue
    .line 123
    const-string v0, "------>EgretGameEngineRuntime startGameEngin"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    invoke-static {v0}, Lcom/didi/game/plugin/egret/EgretUtils;->init(Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->invokeGameEngineMethods()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "game_engine_onStop"

    invoke-direct {p0, v0, v1, v1}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->callEgretGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iput-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->gameEngine:Ljava/lang/Object;

    .line 327
    :cond_0
    return-void
.end method
