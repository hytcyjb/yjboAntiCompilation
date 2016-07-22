.class Lcom/didi/game/activity/FoundWebActivity$6;
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
    .line 309
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .parameter "jsonObject"

    .prologue
    const v5, 0x7f0b0162

    const/4 v7, 0x0

    .line 312
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

    .line 313
    if-nez p1, :cond_0

    .line 314
    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 315
    const-string v3, ""

    .line 351
    :goto_0
    return-object v3

    .line 317
    :cond_0
    new-instance v1, Lcom/didi/game/model/GameInfo;

    invoke-direct {v1, p1}, Lcom/didi/game/model/GameInfo;-><init>(Lorg/json/JSONObject;)V

    .line 318
    .local v1, gameInfo:Lcom/didi/game/model/GameInfo;
    invoke-virtual {v1}, Lcom/didi/game/model/GameInfo;->isNative()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    iget-object v3, v1, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
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

    .line 321
    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 322
    const-string v3, ""

    goto :goto_0

    .line 325
    :cond_1
    iget-object v3, v1, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/didi/game/model/GameInfo;->gameVersionCode:I

    invoke-static {v3, v4}, Lcom/didi/game/common/utils/DiDiUtils;->needDownOrUpdate(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/didi/game/activity/GameInfoActivity;->startActivity(Landroid/app/Activity;Lcom/didi/game/model/GameInfo;Z)V

    .line 341
    :goto_1
    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, netType:Ljava/lang/String;
    const-string v3, "WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    const-string v3, "h5game_wifi"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 328
    .end local v2           #netType:Ljava/lang/String;
    :cond_3
    const-string v3, "pxxmenu04_sw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[menu_type=1][pxxgame_source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {v5}, Lcom/didi/game/activity/FoundWebActivity;->access$500(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][pxxmenu_starttime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/didi/game/model/GameInfo;->position1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v3, "addLogByCustom pxxmenu04_sw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[menu_type=1][pxxgame_source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {v5}, Lcom/didi/game/activity/FoundWebActivity;->access$600(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][pxxmenu_starttime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/didi/game/model/GameInfo;->position1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v3, v1, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/didi/game/common/utils/DiDiUtils;->launchApp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :cond_4
    invoke-virtual {v1}, Lcom/didi/game/model/GameInfo;->convertToH5Game()Lcom/didi/game/model/H5game;

    move-result-object v0

    .line 338
    .local v0, game:Lcom/didi/game/model/H5game;
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$700(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/didi/game/model/H5game;->setSource(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity$6;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    #getter for: Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;
    invoke-static {v3}, Lcom/didi/game/activity/FoundWebActivity;->access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    goto/16 :goto_1

    .line 344
    .end local v0           #game:Lcom/didi/game/model/H5game;
    .restart local v2       #netType:Ljava/lang/String;
    :cond_5
    const-string v3, "2G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    const-string v3, "h5game_2G"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 346
    :cond_6
    const-string v3, "3G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 347
    const-string v3, " h5game_3G"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    :cond_7
    const-string v3, "4G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    const-string v3, "h5game_4G"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2
.end method
