.class Lcom/didi/common/ui/fragment/MenuFragment$9;
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
    .line 536
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$9;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 540
    const-string v2, "pxxmenu103_ck"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 541
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 542
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b0407

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 545
    sget-object v2, Lcom/didi/common/util/Constant;->NOTICE_MESSAGELIST_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 548
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment$9;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/MessageListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 550
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment$9;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 551
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment$9;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgMessageRedPoi:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/MenuFragment;->access$800(Lcom/didi/common/ui/fragment/MenuFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020262

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    return-void
.end method
