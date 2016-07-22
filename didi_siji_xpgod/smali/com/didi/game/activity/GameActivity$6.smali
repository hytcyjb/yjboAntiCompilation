.class Lcom/didi/game/activity/GameActivity$6;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameActivity;->createDesktopShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 535
    iget-object v3, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v3, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v3}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/ImageUtil;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 540
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 544
    new-instance v2, Landroid/content/Intent;

    const-string v3, "didi.psnger.intent.action.OPEN_H5_GAME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v2, shortcutIntent:Landroid/content/Intent;
    const-string v3, "ID"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v3, "name"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v3, "url"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v3, "icon"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v3, "shareUrl"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, addIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 553
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v4}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v3, p0, Lcom/didi/game/activity/GameActivity$6;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-virtual {v3, v0}, Lcom/didi/game/activity/GameActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
