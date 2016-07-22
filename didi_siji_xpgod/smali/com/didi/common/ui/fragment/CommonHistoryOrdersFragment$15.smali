.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;
.super Lthread/Job;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$event:Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->val$event:Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1376
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->val$event:Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;

    iget-object v0, v0, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->val$event:Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;

    iget-object v0, v0, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected run()V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1358
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1366
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->deleteOrderList(Ljava/util/List;)V

    .line 1367
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1368
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method
