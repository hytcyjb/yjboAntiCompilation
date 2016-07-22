.class public Lcom/didi/common/util/LocUtil;
.super Ljava/lang/Object;
.source "LocUtil.java"


# static fields
.field private static final LOC_GPS:Ljava/lang/String; = "gps"

.field private static mInstance:Lcom/didi/common/util/LocUtil;


# instance fields
.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private isGpsShown:Z

.field private isNetShown:Z

.field private isPemShown:Z

.field private isRead:Z

.field private mContext:Landroid/content/Context;

.field private mDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private netDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private pemDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/util/LocUtil;->mInstance:Lcom/didi/common/util/LocUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/didi/common/util/LocUtil;->isGpsShown:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/didi/common/util/LocUtil$1;

    invoke-direct {v0, p0}, Lcom/didi/common/util/LocUtil$1;-><init>(Lcom/didi/common/util/LocUtil;)V

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->mDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 171
    new-instance v0, Lcom/didi/common/util/LocUtil$2;

    invoke-direct {v0, p0}, Lcom/didi/common/util/LocUtil$2;-><init>(Lcom/didi/common/util/LocUtil;)V

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->pemDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 214
    new-instance v0, Lcom/didi/common/util/LocUtil$3;

    invoke-direct {v0, p0}, Lcom/didi/common/util/LocUtil$3;-><init>(Lcom/didi/common/util/LocUtil;)V

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->netDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 41
    iput-boolean v1, p0, Lcom/didi/common/util/LocUtil;->isGpsShown:Z

    .line 42
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/util/LocUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/util/LocUtil;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/didi/common/util/LocUtil;->isPemShown:Z

    return p1
.end method

.method static synthetic access$202(Lcom/didi/common/util/LocUtil;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/didi/common/util/LocUtil;->isNetShown:Z

    return p1
.end method

.method private checkPemStatus()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->isLocateLimit()Z

    move-result v0

    .line 67
    .local v0, limit:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/didi/common/util/LocUtil;->isPemShown:Z

    if-nez v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/didi/common/util/LocUtil;->showPemDialog()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/util/LocUtil;->checkGpsStatus()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/common/util/LocUtil;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/didi/common/util/LocUtil;->mInstance:Lcom/didi/common/util/LocUtil;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/didi/common/util/LocUtil;

    invoke-direct {v0}, Lcom/didi/common/util/LocUtil;-><init>()V

    sput-object v0, Lcom/didi/common/util/LocUtil;->mInstance:Lcom/didi/common/util/LocUtil;

    .line 37
    :cond_0
    sget-object v0, Lcom/didi/common/util/LocUtil;->mInstance:Lcom/didi/common/util/LocUtil;

    return-object v0
.end method

.method private showNetDialog()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "permission_locate_net_error_show"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 98
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b03e1

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 100
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 101
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b04f1

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/util/LocUtil;->netDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 104
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPemDialog()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "permission_locate_instruct_error_show"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 84
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b03e4

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 86
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 87
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03e0

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/util/LocUtil;->pemDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 90
    iget-object v0, p0, Lcom/didi/common/util/LocUtil;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method


# virtual methods
.method public checkGpsStatus()V
    .locals 4

    .prologue
    .line 109
    iget-boolean v2, p0, Lcom/didi/common/util/LocUtil;->isGpsShown:Z

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/common/util/LocUtil;->isGpsShown:Z

    .line 115
    iget-object v2, p0, Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, gps:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    :cond_2
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    const v3, 0x7f0b03df

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->GPS:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 121
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 122
    const v2, 0x7f0b0276

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 123
    const v2, 0x7f0b0132

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/didi/common/util/LocUtil;->mDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 125
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 126
    const-string v2, "permission_gps_error_show"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkNetStatus()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    .line 52
    .local v0, flag:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netWorkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    if-nez v0, :cond_1

    .line 54
    iget-boolean v1, p0, Lcom/didi/common/util/LocUtil;->isNetShown:Z

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/util/LocUtil;->showNetDialog()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/didi/common/util/LocUtil;->checkPemStatus()V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/didi/common/util/LocUtil;->isGpsShown:Z

    return v0
.end method
