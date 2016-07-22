.class public Lcom/didi/common/helper/BusinessSwitchIntroHelper;
.super Ljava/lang/Object;
.source "BusinessSwitchIntroHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/BusinessSwitchIntroHelper$3;
    }
.end annotation


# static fields
.field private static helper:Lcom/didi/common/helper/BusinessSwitchIntroHelper;


# instance fields
.field private context:Landroid/support/v4/app/Fragment;

.field private dialog:Lcom/didi/frame/dialog/ImageDialog;

.field private dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

.field private flag:Lcom/didi/car/model/CarFlag;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/helper/BusinessSwitchIntroHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->updateWaitFlag(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)Lcom/didi/car/model/CarFlag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;)Lcom/didi/car/model/CarFlag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setUpCarPopuDialog(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V

    return-void
.end method

.method public static getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->helper:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    invoke-direct {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;-><init>()V

    sput-object v0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->helper:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    .line 36
    :cond_0
    sget-object v0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->helper:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    return-object v0
.end method

.method private setUpCarPopuDialog(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V
    .locals 5
    .parameter "flag"
    .parameter "business"

    .prologue
    const/4 v1, 0x1

    .line 155
    iget v0, p1, Lcom/didi/car/model/CarFlag;->confirm_show:I

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarFlag;->confirm_title:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarFlag;->confirm_desc:Ljava/lang/String;

    iget v3, p1, Lcom/didi/car/model/CarFlag;->dynamic_type:I

    iget-object v4, p1, Lcom/didi/car/model/CarFlag;->confirm_price_tip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/car/helper/CarPopupHelper;->initData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    new-instance v1, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;-><init>(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/frame/business/Business;)V

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarPopupHelper;->setListeners(Lcom/didi/car/listener/DynamicUpdatePriceListener;)V

    .line 169
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    iget-object v1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->context:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarPopupHelper;->showPopupWindow(Landroid/view/View;)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    .line 172
    invoke-static {p2}, Lcom/didi/frame/switcher/SwitcherHelper;->switchToByBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method private updateWaitFlag(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->updateWaitFlag(ILcom/didi/car/model/CarFlag;Lcom/didi/common/net/ResponseListener;)V

    .line 190
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ImageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ImageDialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    .line 107
    :cond_1
    return-void
.end method

.method public getCarFlagLastBusiness()Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->lastBusiness:Lcom/didi/frame/business/Business;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlag()Lcom/didi/car/model/CarFlag;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    return-object v0
.end method

.method public getListener()Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;-><init>(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)V

    .line 150
    .local v0, listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    if-nez v2, :cond_0

    .line 58
    const-string v1, ""

    .line 78
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v2, Lcom/didi/car/model/CarFlag;->lastBusiness:Lcom/didi/frame/business/Business;

    .line 61
    .local v0, business:Lcom/didi/frame/business/Business;
    const-string v1, ""

    .line 63
    .local v1, flag:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 64
    sget-object v2, Lcom/didi/common/helper/BusinessSwitchIntroHelper$3;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 76
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    goto :goto_0

    .line 66
    :pswitch_0
    const-string v1, "0"

    .line 67
    goto :goto_1

    .line 69
    :pswitch_1
    const-string v1, "1"

    .line 70
    goto :goto_1

    .line 72
    :pswitch_2
    const-string v1, "2"

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetFlag()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    .line 186
    return-void
.end method

.method public setFlagAndBusiness(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;
    .locals 2
    .parameter "flag"
    .parameter "business"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    .line 41
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    iput-object p2, v0, Lcom/didi/car/model/CarFlag;->lastBusiness:Lcom/didi/frame/business/Business;

    .line 42
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/car/model/CarFlag;->lastOid:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    return-object v0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->context:Landroid/support/v4/app/Fragment;

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialogHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 49
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    return-object v0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->closeDialog()V

    .line 84
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForResponseFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->context:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    iget v0, v0, Lcom/didi/car/model/CarFlag;->flag:I

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/didi/frame/dialog/ImageDialog;

    iget-object v1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->context:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/dialog/ImageDialog;-><init>(Landroid/content/Context;Lcom/didi/car/model/CarFlag;)V

    iput-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    .line 95
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {p0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getListener()Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/dialog/ImageDialog;->setListener(Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;)V

    .line 96
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->dialog:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ImageDialog;->show()V

    goto :goto_0
.end method
