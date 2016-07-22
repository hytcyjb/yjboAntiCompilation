.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1168
    const v1, 0x7f07001e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    .line 1169
    .local v0, color:I
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1170
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->toNextState(Landroid/view/View;)V

    .line 1171
    return-void
.end method
