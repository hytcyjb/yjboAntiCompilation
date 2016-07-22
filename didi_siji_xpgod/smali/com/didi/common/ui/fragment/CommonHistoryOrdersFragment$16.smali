.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;
.super Lthread/Job;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->deleteDidiOrders(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1440
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1448
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected run()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1422
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1427
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1430
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->deleteOrderList(Ljava/util/List;)V

    .line 1431
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1432
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method
