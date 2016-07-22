.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/business/terminator/OrderTerminatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 1
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 621
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 622
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/common/model/BaseObject;)V

    .line 623
    return-void
.end method

.method public onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 3
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 615
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 616
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 617
    return-void
.end method

.method public onOrderTerminateSuccess(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 5
    .parameter "obj"
    .parameter "extras"

    .prologue
    .line 598
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 599
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    const/4 v2, 0x1

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V

    .line 601
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 603
    .local v0, mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 604
    iget-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 606
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 610
    .end local v0           #mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_0
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictRealtimeFragment()V
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    .line 611
    return-void

    .line 608
    :cond_1
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method
