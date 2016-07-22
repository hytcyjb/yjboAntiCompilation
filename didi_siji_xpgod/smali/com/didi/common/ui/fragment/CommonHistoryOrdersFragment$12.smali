.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$12;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showWindowForDeletingOrder(Landroid/view/View;)V
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
    .line 1108
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$12;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    .line 1113
    .local v0, popupWin:Landroid/widget/PopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$12;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doHistoryOrderItemsDelete(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method
