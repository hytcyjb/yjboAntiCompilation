.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mBackPressed:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2902(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Z)Z

    .line 1776
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1777
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1778
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$3000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1779
    return-void
.end method
