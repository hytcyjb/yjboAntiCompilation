.class Lcom/didi/game/activity/FoundWebActivity$5;
.super Ljava/lang/Object;
.source "FoundWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/FoundWebActivity;
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
    .line 270
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$5;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .parameter "jsonObject"

    .prologue
    const v6, 0x7f0b0162

    const/4 v5, 0x0

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameCenterWebActivity openOrDownFunction json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 275
    if-nez p1, :cond_0

    .line 276
    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 277
    const-string v3, ""

    .line 302
    :goto_0
    return-object v3

    .line 279
    :cond_0
    new-instance v1, Lcom/didi/game/model/GameInfo;

    invoke-direct {v1, p1}, Lcom/didi/game/model/GameInfo;-><init>(Lorg/json/JSONObject;)V

    .line 280
    .local v1, gameInfo:Lcom/didi/game/model/GameInfo;
    invoke-virtual {v1}, Lcom/didi/game/model/GameInfo;->isNative()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    iget-object v3, v1, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web call downloadGame err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 283
    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 284
    const-string v3, ""

    goto :goto_0

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$5;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/didi/game/activity/GameInfoActivity;->startActivity(Landroid/app/Activity;Lcom/didi/game/model/GameInfo;Z)V

    .line 292
    :goto_1
    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, netType:Ljava/lang/String;
    const-string v3, "WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    const-string v3, "h5game_wifi"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 288
    .end local v2           #netType:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/didi/game/model/GameInfo;->convertToH5Game()Lcom/didi/game/model/H5game;

    move-result-object v0

    .line 289
    .local v0, game:Lcom/didi/game/model/H5game;
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$5;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$400(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/didi/game/model/H5game;->setSource(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$5;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    goto :goto_1

    .line 295
    .end local v0           #game:Lcom/didi/game/model/H5game;
    .restart local v2       #netType:Ljava/lang/String;
    :cond_4
    const-string v3, "2G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    const-string v3, "h5game_2G"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_5
    const-string v3, "3G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 298
    const-string v3, " h5game_3G"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_6
    const-string v3, "4G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    const-string v3, "h5game_4G"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method
