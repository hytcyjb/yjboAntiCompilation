.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showConfirmDialogIfNeed(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 1520
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 1515
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 1511
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->val$run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 1507
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 1500
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 1496
    return-void
.end method
