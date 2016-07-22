.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

.field final synthetic val$carOrder:Lcom/didi/car/model/CarOrder;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 950
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 951
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-static {v2, v3}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 952
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 955
    .local v0, isSetUseDepart:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v2

    if-nez v2, :cond_0

    .line 956
    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 957
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 959
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 960
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 961
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showCarWaitForResponseFragment(I)V

    .line 964
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 965
    return-void

    .line 952
    .end local v0           #isSetUseDepart:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
