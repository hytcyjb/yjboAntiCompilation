.class Lcom/didi/common/ui/fragment/MenuFragment$6;
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
    .line 488
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$6;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 492
    const v3, 0x7f0b0537

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, title:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 494
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v5, v2, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 495
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 496
    const-string v3, "pxxmenu105_ck"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getInviteSwitchUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 501
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$6;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 503
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$6;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v3, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 505
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/config/Preferences;->setInviteRedPoint(Z)V

    .line 506
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment$6;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V
    invoke-static {v3}, Lcom/didi/common/ui/fragment/MenuFragment;->access$700(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 507
    return-void
.end method