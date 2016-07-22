.class public Lcom/didi/car/ui/activity/CarComplaintActivity;
.super Landroid/app/Activity;
.source "CarComplaintActivity.java"


# instance fields
.field private carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mContent:Ljava/lang/String;

.field private mListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

.field private mOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-instance v0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarComplaintActivity$2;-><init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    .line 138
    new-instance v0, Lcom/didi/car/ui/activity/CarComplaintActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarComplaintActivity$3;-><init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/car/ui/activity/CarComplaintActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/car/ui/activity/CarComplaintActivity;)Lcom/didi/frame/complaint/CarComplaintView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/activity/CarComplaintActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->showReConfirmDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/ui/activity/CarComplaintActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->doConfirm()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/car/ui/activity/CarComplaintActivity;Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->onComplain(Lcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method private defaultReason()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 100
    const v9, 0x7f0b0222

    invoke-virtual {p0, v9}, Lcom/didi/car/ui/activity/CarComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, reason1:Ljava/lang/String;
    const-string v1, "\u53f8\u673a\u723d\u7ea6\u6216\u62d2\u8f7d"

    .line 102
    .local v1, reason2:Ljava/lang/String;
    const-string v2, "\u4e0d\u662f\u8ba2\u5355\u663e\u793a\u8f66\u8f86\u6216\u53f8\u673a"

    .line 103
    .local v2, reason3:Ljava/lang/String;
    const v9, 0x7f0b0221

    invoke-virtual {p0, v9}, Lcom/didi/car/ui/activity/CarComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, reason4:Ljava/lang/String;
    const-string v4, "\u672a\u5750\u8f66\u4ea7\u751f\u8d39\u7528"

    .line 105
    .local v4, reason5:Ljava/lang/String;
    const-string v5, "\u53f8\u673a\u7ed5\u8def"

    .line 106
    .local v5, reason6:Ljava/lang/String;
    const-string v6, "\u9a9a\u6270\u4e58\u5ba2"

    .line 107
    .local v6, reason7:Ljava/lang/String;
    const-string v7, "\u5371\u9669\u9a7e\u9a76"

    .line 108
    .local v7, reason8:Ljava/lang/String;
    const/16 v9, 0x8

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v4, v8, v9

    const/4 v9, 0x5

    aput-object v5, v8, v9

    const/4 v9, 0x6

    aput-object v6, v8, v9

    const/4 v9, 0x7

    aput-object v7, v8, v9

    .line 109
    .local v8, strSplit:[Ljava/lang/String;
    return-object v8
.end method

.method private doConfirm()V
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const v1, 0x7f0b048b

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 195
    :goto_0
    return-void

    .line 182
    :cond_0
    const v1, 0x7f0b052a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 183
    new-instance v0, Lcom/didi/car/ui/activity/CarComplaintActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarComplaintActivity$4;-><init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    .line 191
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mOrderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/didi/car/net/CarRequest;->doComplaint(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private onComplain(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    const v1, 0x7f0b0275

    invoke-virtual {p1, v1}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 205
    .local v0, car:Lcom/didi/car/model/CarOrder;
    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/car/model/CarOrder;->complaintState:I

    .line 206
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->complaintContent:Ljava/lang/String;

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/car/ui/activity/CarComplaintedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private setReasonsContent()V
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getArrayCarComplaintType()[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, comp:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->defaultReason()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    invoke-virtual {v2, v3, v4}, Lcom/didi/frame/complaint/CarComplaintView;->setReasons([Ljava/lang/String;Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;)V

    .line 93
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCarBadCmtTips()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, tip:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const v2, 0x7f0b0220

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v2, v1}, Lcom/didi/frame/complaint/CarComplaintView;->setCompNotice(Ljava/lang/String;)V

    .line 97
    return-void

    .line 91
    .end local v1           #tip:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    iget-object v3, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    invoke-virtual {v2, v0, v3}, Lcom/didi/frame/complaint/CarComplaintView;->setReasons([Ljava/lang/String;Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/CarComplaintView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/CarComplaintView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/car/ui/activity/CarComplaintActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/activity/CarComplaintActivity$1;-><init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/CarComplaintView;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 83
    return-void
.end method

.method private showReConfirmDialog()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b0271

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 131
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 132
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 133
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 135
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 136
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/CarComplaintView;->hideInputMethod()V

    .line 69
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->finish()V

    .line 70
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->overridePendingTransition(II)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 39
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->overridePendingTransition(II)V

    .line 40
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    .line 41
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->setTitleBar()V

    .line 43
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->mOrderId:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->setReasonsContent()V

    .line 45
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    return-void
.end method
