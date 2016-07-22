.class public Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "DDriveCostDetailActivity.java"

# interfaces
.implements Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;


# static fields
.field public static final EXTRA_PAYED_DETAIL:Ljava/lang/String; = "extra_payed_detail"


# instance fields
.field mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 96
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->doDissentSubmit()V

    return-void
.end method

.method private doBack()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->finish()V

    .line 140
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->overridePendingTransition(II)V

    .line 141
    return-void
.end method

.method private doDissentSubmit()V
    .locals 4

    .prologue
    .line 110
    const v1, 0x7f0b02d0

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, oid:Ljava/lang/String;
    new-instance v1, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$2;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->doFeeDissent(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 124
    return-void
.end method

.method private initContentView(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;)V
    .locals 10
    .parameter "controllerView"

    .prologue
    .line 55
    invoke-virtual {p1, p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->setListener(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;)V

    .line 56
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    iget-object v1, v0, Lcom/didi/ddrive/net/http/response/PayedDetail;->feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    iget-wide v2, v0, Lcom/didi/ddrive/net/http/response/PayedDetail;->totalMoney:D

    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    iget-wide v4, v0, Lcom/didi/ddrive/net/http/response/PayedDetail;->voucherAmount:D

    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    iget v0, v0, Lcom/didi/ddrive/net/http/response/PayedDetail;->payChannel:I

    int-to-double v6, v0

    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    iget-wide v8, v0, Lcom/didi/ddrive/net/http/response/PayedDetail;->paiedFee:D

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->setup([Lcom/didi/ddrive/net/http/response/FeeItem;DDDD)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onBackPressed()V

    .line 129
    const-string v0, "pdjxorderfeedetail_00_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->doBack()V

    .line 131
    return-void
.end method

.method public onCostDetailInstructionClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 76
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/ddrive/util/DDriveH5Util;->getCostRuleUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 77
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 78
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    const-string v2, "pdjxorderfeedetail_01_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->overridePendingTransition(II)V

    .line 46
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_payed_detail"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/http/response/PayedDetail;

    iput-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    .line 50
    const v1, 0x7f08032a

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    .line 51
    .local v0, controllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;
    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->initContentView(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 136
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->doBack()V

    .line 66
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->showCostDetailDissentDialog()V

    .line 71
    return-void
.end method

.method public showCostDetailDissentDialog()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b02cf

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 89
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 90
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mCancelTripDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 92
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 93
    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 94
    return-void
.end method
