.class public Lcom/didi/frame/recovery/RecoveryDDrive;
.super Lcom/didi/frame/recovery/RecoveryBusiness;
.source "RecoveryDDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/recovery/RecoveryDDrive$5;
    }
.end annotation


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

.method static synthetic access$000(Lcom/didi/frame/recovery/RecoveryDDrive;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/didi/frame/recovery/RecoveryDDrive;->rediectToResendFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForReq(Lcom/didi/ddrive/model/DDriveOrder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForArr(Lcom/didi/ddrive/model/DDriveOrder;I)V

    return-void
.end method

.method private recoveryByOid(Ljava/lang/String;)V
    .locals 4
    .parameter "oid"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryDDrive;->mContext:Landroid/content/Context;

    const v1, 0x7f0b035b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 63
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/didi/frame/recovery/RecoveryDDrive$1;

    invoke-direct {v3, p0, p1}, Lcom/didi/frame/recovery/RecoveryDDrive$1;-><init>(Lcom/didi/frame/recovery/RecoveryDDrive;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail(JLcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V

    .line 147
    return-void
.end method

.method private rediectToResendFragment()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryDDrive;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    const v2, 0x7f0b0312

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 154
    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryDDrive;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0367

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 157
    new-instance v1, Lcom/didi/frame/recovery/RecoveryDDrive$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/recovery/RecoveryDDrive$2;-><init>(Lcom/didi/frame/recovery/RecoveryDDrive;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 194
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 195
    return-void
.end method

.method private redirectToDDriveWaitForArr(Lcom/didi/ddrive/model/DDriveOrder;I)V
    .locals 3
    .parameter "ddriveOrder"
    .parameter "serviceType"

    .prologue
    .line 220
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 221
    new-instance v0, Lcom/didi/frame/recovery/RecoveryDDrive$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryDDrive$4;-><init>(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;I)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method private redirectToDDriveWaitForReq(Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 3
    .parameter "ddriveOrder"

    .prologue
    .line 198
    const-string v0, "recovery_response_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/didi/frame/recovery/RecoveryDDrive$3;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/recovery/RecoveryDDrive$3;-><init>(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    return-void
.end method


# virtual methods
.method public recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryDDrive;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p2, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 52
    .local v0, oid:Ljava/lang/String;
    iget v1, p2, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 53
    .local v1, type:I
    invoke-direct {p0, v0}, Lcom/didi/frame/recovery/RecoveryDDrive;->recoveryByOid(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "oid"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryDDrive;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0, p2}, Lcom/didi/frame/recovery/RecoveryDDrive;->recoveryByOid(Ljava/lang/String;)V

    .line 59
    return-void
.end method
