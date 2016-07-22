.class public Lcom/didi/ddrive/managers/DDriveAlertManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "DDriveAlertManager.java"


# static fields
.field private static sInstance:Lcom/didi/ddrive/managers/DDriveAlertManager;


# instance fields
.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/DDriveAlertManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/didi/ddrive/managers/DDriveAlertManager;->sInstance:Lcom/didi/ddrive/managers/DDriveAlertManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/didi/ddrive/managers/DDriveAlertManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DDriveAlertManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/DDriveAlertManager;->sInstance:Lcom/didi/ddrive/managers/DDriveAlertManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/DDriveAlertManager;->sInstance:Lcom/didi/ddrive/managers/DDriveAlertManager;

    return-object v0
.end method


# virtual methods
.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/AlertEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 54
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 55
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/AlertEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/AlertEvent;->type:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 57
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 58
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 60
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/ToastEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 63
    iget v0, p1, Lcom/didi/ddrive/eventbus/event/ToastEvent;->code:I

    const v1, 0x2bf26

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {}, Lcom/didi/common/helper/ToastHelper;->showLongErrorForCancelOrderWhenAccepted()V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/ToastEvent;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/DDriveAlertManager;->sInstance:Lcom/didi/ddrive/managers/DDriveAlertManager;

    .line 31
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/managers/DDriveAlertManager;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method
