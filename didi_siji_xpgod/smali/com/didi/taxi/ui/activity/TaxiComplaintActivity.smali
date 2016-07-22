.class public Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "TaxiComplaintActivity.java"


# static fields
.field private static final COMPLAINT_TIP:Ljava/lang/String; = "complaint_tip"


# instance fields
.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mContent:Ljava/lang/String;

.field private mListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

.field private mOrderId:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    .line 99
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;-><init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    .line 147
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$3;-><init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    return p1
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->showReConfirmDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->doConfirm()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->onComplain(Lcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method private defaultReason()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 90
    const v6, 0x7f0b0268

    invoke-virtual {p0, v6}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, reason1:Ljava/lang/String;
    const v6, 0x7f0b026d

    invoke-virtual {p0, v6}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, reason2:Ljava/lang/String;
    const v6, 0x7f0b026c

    invoke-virtual {p0, v6}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, reason3:Ljava/lang/String;
    const v6, 0x7f0b0267

    invoke-virtual {p0, v6}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, reason4:Ljava/lang/String;
    const v6, 0x7f0b026a

    invoke-virtual {p0, v6}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, reason5:Ljava/lang/String;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v4, v5, v6

    .line 96
    .local v5, strSplit:[Ljava/lang/String;
    return-object v5
.end method

.method private doConfirm()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 187
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mContent:Ljava/lang/String;

    .line 188
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const v1, 0x7f0b048c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 227
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_1
    const v1, 0x7f0b048b

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    if-ne v1, v3, :cond_5

    .line 213
    :cond_3
    :goto_1
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    if-le v1, v3, :cond_4

    .line 217
    :cond_4
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$4;-><init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    .line 225
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mContent:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/didi/taxi/net/TaxiRequest;->complain(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 200
    .end local v0           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    :cond_5
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3

    .line 203
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_3

    .line 206
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_3

    .line 209
    iget v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    goto :goto_1
.end method

.method private onComplain(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    const v1, 0x7f0b0275

    invoke-virtual {p1, v1}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 234
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

    .line 235
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 237
    .local v0, taxi:Lcom/didi/taxi/model/TaxiOrder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintState(I)V

    .line 238
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintContent(Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private setReasonsContent()V
    .locals 4

    .prologue
    .line 74
    const-string v1, "Not Found"

    .line 75
    .local v1, string:Ljava/lang/String;
    const-string v2, "complaint_tip"

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, strSplit:[Ljava/lang/String;
    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    array-length v2, v0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 80
    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    invoke-static {v0, v2}, Lcom/didi/frame/complaint/ComplaintViewHelper;->setComplaintReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->defaultReason()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    invoke-static {v2, v3}, Lcom/didi/frame/complaint/ComplaintViewHelper;->setComplaintReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->defaultReason()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    invoke-static {v2, v3}, Lcom/didi/frame/complaint/ComplaintViewHelper;->setComplaintReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 62
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 70
    return-void
.end method

.method private showReConfirmDialog()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b0271

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 140
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 141
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 142
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 144
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 145
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->hideInptuMethod()V

    .line 56
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->finish()V

    .line 57
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->overridePendingTransition(II)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->overridePendingTransition(II)V

    .line 40
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, view:Lcom/didi/frame/complaint/ComplaintView;
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->setTitleBar()V

    .line 43
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->setReasonsContent()V

    .line 44
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mOrderId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 51
    return-void
.end method
