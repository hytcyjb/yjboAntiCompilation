.class Lcom/didi/common/ui/fragment/MenuFragment$5;
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
    .line 458
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$5;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 462
    const-string v5, "pxxmenu102_ck"

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/didi/common/config/Preferences;->setVoucherPointFlag(I)V

    .line 465
    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getMyWallet()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v5

    iget-object v3, v5, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 468
    .local v3, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?daijia_pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&daijia_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    const-string v5, "morning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user.token is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    const v5, 0x7f0b0584

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, title:Ljava/lang/String;
    new-instance v4, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v4}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 475
    .local v4, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v8, v4, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 476
    iput-object v1, v4, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 477
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 478
    iput-object v2, v4, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 479
    iput-boolean v8, v4, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 480
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/didi/common/ui/fragment/MenuFragment$5;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v5}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/didi/common/ui/webview/WalletWebActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "data_model"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    iget-object v5, p0, Lcom/didi/common/ui/fragment/MenuFragment$5;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v5, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 484
    iget-object v5, p0, Lcom/didi/common/ui/fragment/MenuFragment$5;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V
    invoke-static {v5}, Lcom/didi/common/ui/fragment/MenuFragment;->access$700(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 486
    return-void
.end method
