.class public Lcom/didi/car/ui/activity/CarCostDetailActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CarCostDetailActivity.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;


# instance fields
.field mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mFeeDetail:Lcom/didi/car/model/FeeDetail;

.field private mOrder:Lcom/didi/car/model/CarOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 106
    new-instance v0, Lcom/didi/car/ui/activity/CarCostDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity$1;-><init>(Lcom/didi/car/ui/activity/CarCostDetailActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/activity/CarCostDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->doDissentSubmit()V

    return-void
.end method

.method private doBack()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->finish()V

    .line 150
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->overridePendingTransition(II)V

    .line 151
    return-void
.end method

.method private doDissentSubmit()V
    .locals 4

    .prologue
    .line 120
    const v1, 0x7f0b02d0

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 122
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, oid:Ljava/lang/String;
    new-instance v1, Lcom/didi/car/ui/activity/CarCostDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity$2;-><init>(Lcom/didi/car/ui/activity/CarCostDetailActivity;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->doFeeDissent(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 134
    return-void
.end method

.method private initContentView(Lcom/didi/car/ui/component/CarCostDetailControllerView;)V
    .locals 2
    .parameter "controllerView"

    .prologue
    .line 55
    invoke-virtual {p1, p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setListener(Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;)V

    .line 57
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 58
    .local v0, sendable:Lcom/didi/frame/Sendable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/car/model/CarOrder;

    if-nez v1, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->finish()V

    .line 69
    .end local v0           #sendable:Lcom/didi/frame/Sendable;
    :goto_0
    return-void

    .line 62
    .restart local v0       #sendable:Lcom/didi/frame/Sendable;
    :cond_1
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .end local v0           #sendable:Lcom/didi/frame/Sendable;
    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 63
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mFeeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {p1, v1}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setCarOrderTotalCount(Lcom/didi/car/model/FeeDetail;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {p1, v1}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setCarOrderTotalCount(Lcom/didi/car/model/FeeDetail;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onBackPressed()V

    .line 139
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->doBack()V

    .line 140
    return-void
.end method

.method public onCostDetailInstructionClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 85
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getHistoryDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getHistoryDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-static {v4, v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleHistoryUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 87
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 88
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 85
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->overridePendingTransition(II)V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, controllerView:Lcom/didi/car/ui/component/CarCostDetailControllerView;
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "car_fee_detail"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/FeeDetail;

    iput-object v1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mFeeDetail:Lcom/didi/car/model/FeeDetail;

    .line 49
    new-instance v0, Lcom/didi/car/ui/component/CarCostDetailControllerView;

    .end local v0           #controllerView:Lcom/didi/car/ui/component/CarCostDetailControllerView;
    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;-><init>(Landroid/content/Context;)V

    .line 50
    .restart local v0       #controllerView:Lcom/didi/car/ui/component/CarCostDetailControllerView;
    invoke-direct {p0, v0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->initContentView(Lcom/didi/car/ui/component/CarCostDetailControllerView;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->setContentView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->doBack()V

    .line 74
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->showCostDetailDissentDialog()V

    .line 79
    return-void
.end method

.method public showCostDetailDissentDialog()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b02cf

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 99
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 100
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 102
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 103
    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 104
    return-void
.end method
