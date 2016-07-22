.class Lcom/didi/game/activity/FoundWebActivity$3;
.super Ljava/lang/Object;
.source "FoundWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/FoundWebActivity;->addEnterGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/FoundWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/FoundWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$3;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "jsonObject"

    .prologue
    const/4 v4, 0x0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->FoundWebActivity enterGame json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/didi/game/model/H5game;->createFromJson(Lorg/json/JSONObject;)Lcom/didi/game/model/H5game;

    move-result-object v0

    .line 182
    .local v0, game:Lcom/didi/game/model/H5game;
    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity$3;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {v2}, Lcom/didi/game/activity/FoundWebActivity;->access$100(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/game/model/H5game;->setSource(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity$3;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v2}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    .line 192
    :goto_0
    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, netType:Ljava/lang/String;
    const-string v2, "WIFI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    const-string v2, "h5game_wifi"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 189
    .end local v1           #netType:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity$3;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v2}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    goto :goto_0

    .line 195
    .restart local v1       #netType:Ljava/lang/String;
    :cond_2
    const-string v2, "2G"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const-string v2, "h5game_2G"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_3
    const-string v2, "3G"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    const-string v2, " h5game_3G"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_4
    const-string v2, "4G"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const-string v2, "h5game_4G"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method
