.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->refreshIMUnread(Lcom/didi/common/model/OrderHistoryList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMOrderSIDHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$orderList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->val$orderList:Ljava/util/List;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 830
    check-cast p1, Lcom/didi/im/model/IMOrderSIDHistory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;->onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 834
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;Lcom/didi/im/model/IMOrderSIDHistory;)V

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6$1;->start()Lthread/Job;

    .line 842
    return-void
.end method
