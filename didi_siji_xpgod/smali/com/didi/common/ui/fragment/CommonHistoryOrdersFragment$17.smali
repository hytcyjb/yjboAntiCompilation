.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->deleteDidiOrders(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$sucReqJob:Lthread/Job;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;Lthread/Job;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->val$callback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->val$sucReqJob:Lthread/Job;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1471
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1472
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearSelectedItemsId(Z)V

    .line 1480
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->val$sucReqJob:Lthread/Job;

    invoke-static {v0}, Lthread/pool/JobManager;->submit(Lthread/Job;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/OrderHistory;

    .line 1457
    .local v0, history:Lcom/didi/common/model/OrderHistory;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1460
    .end local v0           #history:Lcom/didi/common/model/OrderHistory;
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 1461
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1462
    iget-object v2, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 1463
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1466
    :cond_1
    return-void
.end method
