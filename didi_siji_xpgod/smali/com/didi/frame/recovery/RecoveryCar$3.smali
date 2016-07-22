.class Lcom/didi/frame/recovery/RecoveryCar$3;
.super Ljava/lang/Object;
.source "RecoveryCar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryCar;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryCar;

.field final synthetic val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

.field final synthetic val$carOrder:Lcom/didi/car/model/CarOrder;

.field final synthetic val$serviceType:I


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryCar;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->this$0:Lcom/didi/frame/recovery/RecoveryCar;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p3, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iput p4, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$serviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 250
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-static {v2, v3}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 251
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 252
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget v2, v2, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    const/16 v3, 0xfa1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget v2, v2, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    const/16 v3, 0xfa2

    if-ne v2, v3, :cond_1

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carHistoryOrder:Lcom/didi/car/model/CarHistoryOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 258
    .local v0, isSetUseDepart:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 260
    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 263
    .end local v0           #isSetUseDepart:Z
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 264
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 265
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    iget v2, p0, Lcom/didi/frame/recovery/RecoveryCar$3;->val$serviceType:I

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showCarWaitForArrivalFragment(I)V

    .line 266
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 267
    return-void

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
