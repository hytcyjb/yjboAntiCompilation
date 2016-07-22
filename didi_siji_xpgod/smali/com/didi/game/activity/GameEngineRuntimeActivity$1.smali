.class Lcom/didi/game/activity/GameEngineRuntimeActivity$1;
.super Ljava/lang/Object;
.source "GameEngineRuntimeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameEngineRuntimeActivity;->switchGameEnginRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$000(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "egret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->startEgretGameRuntime()V
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$000(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "laya"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->startLayaGameRuntime()V
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$200(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    goto :goto_0
.end method
