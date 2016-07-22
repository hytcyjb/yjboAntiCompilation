.class Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;
.super Ljava/lang/Object;
.source "EgretGameEngineRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 77
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->pluginProxy:Lcom/didi/game/plugin/service/PluginProxy;
    invoke-static {v2}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$000(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/plugin/service/PluginProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/game/plugin/service/PluginProxy;->getJarFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #getter for: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$100(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v1, v2, v3, v4}, Lcom/didi/game/plugin/service/GameEnginClassLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    #calls: Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->createGameEngine(Ljava/lang/Class;)V
    invoke-static {v1, v0}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;->access$200(Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;Ljava/lang/Class;)V

    .line 82
    return-void
.end method
