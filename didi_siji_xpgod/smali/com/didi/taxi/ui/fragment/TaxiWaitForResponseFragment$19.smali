.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recallOrder(I)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

.field final synthetic val$from:I

.field final synthetic val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;ILcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iput p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$from:I

    iput-object p3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 968
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 969
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$from:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handleRecallError(ILcom/didi/common/model/BaseObject;)V
    invoke-static {v0, v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;ILcom/didi/common/model/BaseObject;)V

    .line 970
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$from:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handleRecallError(ILcom/didi/common/model/BaseObject;)V
    invoke-static {v0, v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;ILcom/didi/common/model/BaseObject;)V

    .line 975
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 1009
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1010
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 979
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v1

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3302(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I

    .line 980
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasChangeOrderLifeCycle:Z
    invoke-static {v0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z

    .line 981
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iput-boolean v2, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isCarPoolFirstSucceed:Z

    .line 982
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V

    .line 983
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setCarPoolTypeState()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 984
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    .line 985
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 986
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 987
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 989
    :cond_0
    const v0, 0x7f0b02ef

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/taxi/business/TaxiOrderLooper;->setResend(Z)V

    .line 992
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->stopLoopByReCall()V

    .line 994
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 995
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateTaxiDriversMarketOffLight()V

    .line 996
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->startLoop()V

    .line 997
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$from:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 998
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->setVisibility(I)V

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v1}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1002
    invoke-static {}, Lcom/didi/map/MapController;->removeRoute()V

    .line 1003
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarPoolRoutePointsMarker()V

    .line 1005
    :cond_2
    return-void
.end method
