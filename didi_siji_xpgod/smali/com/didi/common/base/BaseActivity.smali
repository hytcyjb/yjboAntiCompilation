.class public Lcom/didi/common/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;


# instance fields
.field private mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/didi/common/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/base/BaseActivity$1;-><init>(Lcom/didi/common/base/BaseActivity;)V

    iput-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/base/BaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;->removeDialog()V

    return-void
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 123
    :cond_0
    return-void
.end method

.method private showDriverCountChangeDialog(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 3
    .parameter "feeDetail"

    .prologue
    .line 97
    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;->removeDialog()V

    .line 99
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 100
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/base/BaseActivity;->mDiaListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 103
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCostDetailReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 0
    .parameter "feeDetail"
    .parameter "isHint"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseActivity;->showDriverCountChangeDialog(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 59
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/didi/common/service/DaemonService;->stop(Landroid/content/Context;)V

    .line 47
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 65
    invoke-static {p0}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerInnerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 71
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterInnerCostDetailListener()V

    .line 72
    return-void
.end method

.method public resizeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 81
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 31
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0}, Lcom/didi/common/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/didi/common/base/BaseActivity;->resizeView(Landroid/view/View;)V

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-static {p0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 41
    return-void
.end method
