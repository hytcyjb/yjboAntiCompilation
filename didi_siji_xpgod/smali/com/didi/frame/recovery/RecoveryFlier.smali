.class public Lcom/didi/frame/recovery/RecoveryFlier;
.super Lcom/didi/frame/recovery/RecoveryBusiness;
.source "RecoveryFlier.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "business"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryBusiness;-><init>(Lcom/didi/frame/business/Business;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/recovery/RecoveryFlier;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryFlier;->redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/recovery/RecoveryFlier;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/frame/recovery/RecoveryFlier;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    return-void
.end method

.method private recoveryByOid(Ljava/lang/String;)V
    .locals 4
    .parameter "oid"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryFlier;->mContext:Landroid/content/Context;

    const v1, 0x7f0b035b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 63
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryFlier$1;-><init>(Lcom/didi/frame/recovery/RecoveryFlier;)V

    invoke-static {p1, v0}, Lcom/didi/car/net/CarRequest;->getFlierHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 203
    return-void
.end method

.method private redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    .locals 3
    .parameter "tdKey"
    .parameter "flierHistoryOrder"
    .parameter "order"
    .parameter "serviceType"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flier_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 248
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier$3;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/didi/frame/recovery/RecoveryFlier$3;-><init>(Lcom/didi/frame/recovery/RecoveryFlier;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;I)V

    const-wide/16 v1, 0x9c4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    return-void
.end method

.method private redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
    .locals 3
    .parameter "flierHistoryOrder"
    .parameter "order"

    .prologue
    .line 206
    const-string v0, "flier_recovery_response_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 212
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 215
    :cond_0
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/frame/recovery/RecoveryFlier$2;-><init>(Lcom/didi/frame/recovery/RecoveryFlier;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method


# virtual methods
.method public recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryFlier;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p2, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 52
    .local v0, oid:Ljava/lang/String;
    iget v1, p2, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 53
    .local v1, type:I
    invoke-direct {p0, v0}, Lcom/didi/frame/recovery/RecoveryFlier;->recoveryByOid(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "oid"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryFlier;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0, p2}, Lcom/didi/frame/recovery/RecoveryFlier;->recoveryByOid(Ljava/lang/String;)V

    .line 59
    return-void
.end method
