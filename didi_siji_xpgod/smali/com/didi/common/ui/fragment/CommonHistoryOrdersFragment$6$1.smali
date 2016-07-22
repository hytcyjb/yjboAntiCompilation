.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;
.super Lthread/Job;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;

.field final synthetic val$t:Lcom/didi/im/model/IMOrderSIDHistory;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->val$t:Lcom/didi/im/model/IMOrderSIDHistory;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->val$t:Lcom/didi/im/model/IMOrderSIDHistory;

    invoke-virtual {v0}, Lcom/didi/im/model/IMOrderSIDHistory;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->val$orderList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->val$t:Lcom/didi/im/model/IMOrderSIDHistory;

    invoke-virtual {v2}, Lcom/didi/im/model/IMOrderSIDHistory;->getSidMap()Ljava/util/Map;

    move-result-object v2

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadUnReadFromDB(Ljava/util/List;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/util/List;Ljava/util/Map;)V

    .line 840
    :cond_0
    return-void
.end method
