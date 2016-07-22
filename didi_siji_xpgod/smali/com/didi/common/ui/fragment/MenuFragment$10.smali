.class Lcom/didi/common/ui/fragment/MenuFragment$10;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$10;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 559
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    :goto_0
    return-void

    .line 561
    :cond_0
    const-string v3, "menu_game_click"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameH5Url()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, url:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------game url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 564
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 565
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v5, v2, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 566
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 568
    const-string v3, "menu_game"

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 569
    const v3, 0x7f0b03fd

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 571
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getMenuShowGame()Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$10;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    :goto_1
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 578
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$10;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v3, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 579
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setMenuGameRedPoint(Z)V

    .line 583
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$10;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V
    invoke-static {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->access$700(Lcom/didi/common/ui/fragment/MenuFragment;)V

    goto :goto_0

    .line 574
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-class v3, Lcom/didi/game/activity/FoundWebActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 575
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$10;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method
