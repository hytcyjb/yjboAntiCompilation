.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$flierOrder:Lcom/didi/flier/model/FlierOrder;

.field final synthetic val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 881
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v2}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 882
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-static {v2, v3}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 883
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlat:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v3, v3, Lcom/didi/flier/model/FlierHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v3, v3, Lcom/didi/flier/model/FlierHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$historyOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 886
    .local v0, isSetUseDepart:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v2}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 888
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;->val$flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 890
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 891
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 892
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showFlierWaitForResponseFragment(I)V

    .line 895
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 896
    return-void

    .line 883
    .end local v0           #isSetUseDepart:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
