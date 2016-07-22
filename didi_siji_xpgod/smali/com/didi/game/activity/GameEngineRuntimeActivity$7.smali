.class Lcom/didi/game/activity/GameEngineRuntimeActivity$7;
.super Ljava/lang/Object;
.source "GameEngineRuntimeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameEngineRuntimeActivity;->createDesktopShortcut()V
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
    .line 596
    iput-object p1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 600
    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/ImageUtil;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 605
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 609
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    const-class v4, Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .local v2, shortcutIntent:Landroid/content/Intent;
    const-string v3, "ID"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v3, "name"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v3, "url"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v3, "icon"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v3, "shareUrl"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v3, "pname"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v3, "gameId"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v3, "landscape"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getScrrenOrientation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v3, "egret_game_load_url"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v3, "egret_game_update_url"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getEgretGameUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 624
    .local v0, addIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 625
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-virtual {v3, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
