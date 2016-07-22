.class public Lcom/didi/frame/recovery/RecoveryCar;
.super Lcom/didi/frame/recovery/RecoveryBusiness;
.source "RecoveryCar.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "business"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryBusiness;-><init>(Lcom/didi/frame/business/Business;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/recovery/RecoveryCar;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryCar;->redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/recovery/RecoveryCar;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/frame/recovery/RecoveryCar;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    return-void
.end method

.method private recoveryByOid(Ljava/lang/String;)V
    .locals 4
    .parameter "oid"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryCar;->mContext:Landroid/content/Context;

    const v1, 0x7f0b035b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryCar$1;-><init>(Lcom/didi/frame/recovery/RecoveryCar;)V

    invoke-static {p1, v0}, Lcom/didi/car/net/CarRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 202
    return-void
.end method

.method private redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    .locals 3
    .parameter "tdKey"
    .parameter "carHistoryOrder"
    .parameter "carOrder"
    .parameter "serviceType"

    .prologue
    .line 243
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 247
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar$3;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/didi/frame/recovery/RecoveryCar$3;-><init>(Lcom/didi/frame/recovery/RecoveryCar;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;I)V

    const-wide/16 v1, 0x9c4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method

.method private redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "carHistoryOrder"
    .parameter "carOrder"

    .prologue
    .line 205
    const-string v0, "recovery_response_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 211
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 214
    :cond_0
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/frame/recovery/RecoveryCar$2;-><init>(Lcom/didi/frame/recovery/RecoveryCar;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method


# virtual methods
.method public recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryCar;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p2, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 51
    .local v0, oid:Ljava/lang/String;
    iget v1, p2, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 52
    .local v1, type:I
    invoke-direct {p0, v0}, Lcom/didi/frame/recovery/RecoveryCar;->recoveryByOid(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "oid"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryCar;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0, p2}, Lcom/didi/frame/recovery/RecoveryCar;->recoveryByOid(Ljava/lang/String;)V

    .line 58
    return-void
.end method
