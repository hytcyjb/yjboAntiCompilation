.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getDataFromService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/OrderHistoryList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1548
    check-cast p1, Lcom/didi/common/model/OrderHistoryList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->onFinish(Lcom/didi/common/model/OrderHistoryList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/OrderHistoryList;)V
    .locals 4
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 1551
    const-string v2, "OrderHistoryManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "history list got , list is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->appendDDriveList(Lcom/didi/common/model/OrderHistoryList;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistoryList;)V

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gethistory :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/OrderHistoryList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iget-boolean v2, p1, Lcom/didi/common/model/OrderHistoryList;->hasNext:Z

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z
    invoke-static {v0, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1302(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Z)Z

    .line 1556
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showLoadingMore()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1562
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1563
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    const-string v0, "OrderHistoryManager"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 1551
    goto :goto_0

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showNoMore()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    goto :goto_1

    .line 1568
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1569
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1577
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1579
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showHistoryEmptyView()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 1582
    :cond_4
    const-string v0, "OrderHistoryManager"

    const-string v1, "close progress dialog"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1570
    :cond_5
    if-eqz p1, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1572
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->fillData(Lcom/didi/common/model/OrderHistoryList;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistoryList;)V

    .line 1573
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->refreshIMUnread(Lcom/didi/common/model/OrderHistoryList;)V

    .line 1574
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$2708(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I

    goto :goto_3
.end method
