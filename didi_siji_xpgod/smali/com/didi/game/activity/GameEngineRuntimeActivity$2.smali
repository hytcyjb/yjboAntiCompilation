.class Lcom/didi/game/activity/GameEngineRuntimeActivity$2;
.super Ljava/lang/Object;
.source "GameEngineRuntimeActivity.java"

# interfaces
.implements Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/GameEngineRuntimeActivity;
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
    .line 151
    iput-object p1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMsg"

    .prologue
    .line 160
    const-string v0, "------------>GameEngineRuntimeActivity onError"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-virtual {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->cancelProgressDialog()V

    .line 163
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #calls: Lcom/didi/game/activity/GameEngineRuntimeActivity;->redirectH5GameActivity()V
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$300(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "------------>GameEngineRuntimeActivity onStart"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-virtual {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->cancelProgressDialog()V

    .line 171
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "------------>GameEngineRuntimeActivity onSuccess"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    return-void
.end method
