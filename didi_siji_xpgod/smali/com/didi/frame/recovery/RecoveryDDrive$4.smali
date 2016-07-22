.class Lcom/didi/frame/recovery/RecoveryDDrive$4;
.super Ljava/lang/Object;
.source "RecoveryDDrive.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForArr(Lcom/didi/ddrive/model/DDriveOrder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

.field final synthetic val$ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field final synthetic val$serviceType:I


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput p3, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$serviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-static {v1, v2}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 225
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, isSetUseDepart:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/DDriveOrder;->isBooking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 231
    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/DDriveOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 234
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 235
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 236
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    iget v2, p0, Lcom/didi/frame/recovery/RecoveryDDrive$4;->val$serviceType:I

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment(I)V

    .line 237
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 238
    return-void
.end method
