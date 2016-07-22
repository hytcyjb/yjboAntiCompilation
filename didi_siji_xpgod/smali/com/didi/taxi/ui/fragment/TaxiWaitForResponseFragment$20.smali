.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/business/terminator/OrderTerminatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doCancel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iput p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onTerminateSuccess()V
    .locals 5

    .prologue
    .line 1041
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1042
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v2, 0x1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V

    .line 1043
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v1, v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v1, v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->isFriendBarShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCancelResonWebView()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1058
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->isBooking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1047
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 1048
    .local v0, mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v0, :cond_1

    .line 1049
    iget-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 1051
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 1055
    .end local v0           #mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_1
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictTaxiRealtimeFragment()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1056
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->val$from:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->switchToTextCall(I)V
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    goto :goto_0

    .line 1053
    :cond_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_1
.end method


# virtual methods
.method public onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 2
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 1068
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1069
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->val$from:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/common/model/BaseObject;I)V

    .line 1070
    return-void
.end method

.method public onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 3
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 1062
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1063
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 1064
    return-void
.end method

.method public onOrderTerminateSuccess(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 0
    .parameter "obj"
    .parameter "extras"

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;->onTerminateSuccess()V

    .line 1038
    return-void
.end method
