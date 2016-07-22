.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

.field final synthetic val$order:Lcom/didi/ddrive/model/DDriveOrder;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    iput-object p2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 307
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 308
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 309
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 310
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 311
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 312
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment(I)V

    .line 313
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 314
    return-void
.end method
