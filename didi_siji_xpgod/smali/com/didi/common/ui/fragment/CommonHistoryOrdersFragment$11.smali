.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

.field final synthetic val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

.field final synthetic val$carOrder:Lcom/didi/car/model/CarOrder;

.field final synthetic val$serviceType:I


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iput p4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$serviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 976
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-static {v2, v3}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 978
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carOrder:Lcom/didi/car/model/CarOrder;

    if-nez v2, :cond_0

    .line 979
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 980
    const v1, 0x7f0b035c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 981
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "error_car"

    const-string v3, "historyordernull"

    invoke-static {v1, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 986
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget v2, v2, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    const/16 v3, 0xfa1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget v2, v2, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    const/16 v3, 0xfa2

    if-ne v2, v3, :cond_2

    .line 988
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 991
    .local v0, isSetUseDepart:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v2

    if-nez v2, :cond_2

    .line 992
    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 993
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 996
    .end local v0           #isSetUseDepart:Z
    :cond_2
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 997
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 998
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    iget v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;->val$serviceType:I

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/FragmentMgr;->showCarWaitForArrivalFragment(II)V

    .line 999
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0

    .line 988
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
