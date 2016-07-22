.class Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;
.super Ljava/lang/Object;
.source "GameEngineRuntime.java"

# interfaces
.implements Lcom/didi/game/plugin/service/IConfigLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/runtime/GameEngineRuntime;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/runtime/GameEngineRuntime;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/runtime/GameEngineRuntime;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .line 77
    const-string v0, "------->GameEngineRuntime loadConf onFailure:"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    iget-object v0, v0, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->gameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    const-string v1, "not get conf..."

    invoke-interface {v0, v1}, Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;->onError(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "------->GameEngineRuntime loadConf onSuccess:"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/didi/game/plugin/runtime/GameEngineRuntime$1;->this$0:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->loadZIP()V

    .line 73
    return-void
.end method
