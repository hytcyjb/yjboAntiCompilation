.class Lcom/didi/frame/recovery/RecoveryFlier$2;
.super Ljava/lang/Object;
.source "RecoveryFlier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryFlier;->redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryFlier;

.field final synthetic val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

.field final synthetic val$order:Lcom/didi/flier/model/FlierOrder;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryFlier;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->this$0:Lcom/didi/frame/recovery/RecoveryFlier;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$order:Lcom/didi/flier/model/FlierOrder;

    iput-object p3, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v2}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 219
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$order:Lcom/didi/flier/model/FlierOrder;

    invoke-static {v2, v3}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 221
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->area:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->area:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setOrderCityId(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlat:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v3, v3, Lcom/didi/flier/model/FlierHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v3, v3, Lcom/didi/flier/model/FlierHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$flierHistoryOrder:Lcom/didi/flier/model/FlierHistoryOrder;

    iget-object v2, v2, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 229
    .local v0, isSetUseDepart:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v2}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 231
    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryFlier$2;->val$order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 233
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 234
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 235
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showFlierWaitForResponseFragment(I)V

    .line 238
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 239
    return-void

    .line 225
    .end local v0           #isSetUseDepart:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
