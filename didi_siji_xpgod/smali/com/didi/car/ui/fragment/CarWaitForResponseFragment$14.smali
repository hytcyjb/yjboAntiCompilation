.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/business/terminator/OrderTerminatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->doCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 1
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 620
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 621
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2200(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Lcom/didi/common/model/BaseObject;)V

    .line 622
    return-void
.end method

.method public onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 3
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 614
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 615
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 616
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
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    const/4 v2, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$200(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)V

    .line 600
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->order:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 602
    .local v0, mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 603
    iget-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 605
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 609
    .end local v0           #mCurLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->redictRealtimeFragment()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    .line 610
    return-void

    .line 607
    :cond_1
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method
