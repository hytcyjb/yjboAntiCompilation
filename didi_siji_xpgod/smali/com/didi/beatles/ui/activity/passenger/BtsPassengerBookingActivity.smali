.class public Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$9;,
        Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_MODIFY_REMARK:I = 0x2712


# instance fields
.field private btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

.field descOnClick:Landroid/view/View$OnClickListener;

.field private from:Ljava/lang/String;

.field private final goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private isCalculate:Z

.field private mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

.field private mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;

.field private mCalPriceReqId:J

.field private mEnterTimestamp:J

.field private mIsResendOrder:Z

.field private oidStr:Ljava/lang/String;

.field private oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

.field private final orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private to:Ljava/lang/String;

.field valuationOnClick:Landroid/view/View$OnClickListener;

.field private final weixinCheckListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    .line 64
    sget-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->OTHER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->isCalculate:Z

    .line 66
    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oidStr:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mEnterTimestamp:J

    .line 179
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$2;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->valuationOnClick:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$3;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->descOnClick:Landroid/view/View$OnClickListener;

    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mCalPriceReqId:J

    .line 441
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 476
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 546
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->weixinCheckListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mCalPriceReqId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)Lcom/didi/beatles/model/order/BtsOrderPassenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->orderCreateFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->showWXUnstalledDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->showWXLowVersionDialog()V

    return-void
.end method

.method private calculateCheck()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getBookingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getTimeTxt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/model/order/BtsOrderParams;->setSetupTime(J)V

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private calculateCrc32(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "timestamp"
    .parameter "from_lat"
    .parameter "from_lng"
    .parameter "to_lat"
    .parameter "to_lng"

    .prologue
    .line 642
    const-string v3, "%s_%s,%s_%s,%s_%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mEnterTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 645
    .local v1, data:[B
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 646
    .local v0, crc:Ljava/util/zip/CRC32;
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 648
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    return-wide v3
.end method

.method private checkOrderInfo()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v5}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getFromText()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, fromStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v5}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getToText()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, toStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    :cond_0
    const v5, 0x7f0b01e5

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_0
    return v4

    .line 224
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    const v5, 0x7f0b01e6

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v5}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getBookingTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 230
    const v5, 0x7f0b01e8

    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 234
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    invoke-static {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getTimeTxt()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/didi/beatles/model/order/BtsOrderParams;->setSetupTime(J)V

    .line 240
    new-instance v2, Lcom/didi/beatles/helper/BtsPayHelper;

    const-string v5, "wxd5b252a1660012b4"

    invoke-direct {v2, p0, v5}, Lcom/didi/beatles/helper/BtsPayHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    .local v2, mPayHelper:Lcom/didi/beatles/helper/BtsPayHelper;
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->weixinCheckListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-virtual {v2, v5}, Lcom/didi/beatles/helper/BtsPayHelper;->setListener(Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;)V

    .line 242
    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsPayHelper;->checkWxSupport()Z

    move-result v5

    if-nez v5, :cond_1

    .line 246
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    .line 247
    .local v1, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v5

    iget-boolean v5, v5, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    if-nez v5, :cond_6

    .line 248
    invoke-static {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 251
    :cond_6
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkOrderStatus(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "btsOrderPassenger"

    .prologue
    const/4 v2, 0x0

    .line 411
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_cancel:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_confirm:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_msg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_confirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 418
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 424
    :goto_0
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 425
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 426
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 427
    return-void

    .line 420
    :cond_0
    const v1, 0x7f0b0088

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 422
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "btsOrderPassenger"

    .prologue
    .line 430
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 433
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 434
    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 435
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 437
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 439
    return-void
.end method

.method private creatBtsOrder()V
    .locals 12

    .prologue
    .line 347
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/beatles/helper/BtsPermissionUtils;->checkAndShowLocationPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 348
    .local v9, result:Z
    if-nez v9, :cond_0

    .line 395
    :goto_0
    return-void

    .line 352
    :cond_0
    const-wide/16 v10, 0x0

    .line 354
    .local v10, serial:J
    :try_start_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v1, v0, v2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLat()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLng()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLat()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLng()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->calculateCrc32(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 359
    :goto_1
    new-instance v8, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    invoke-direct {v8}, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;-><init>()V

    .line 360
    .local v8, model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mCreateTime:J

    .line 361
    const v0, 0x7f0b01f8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 362
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;

    invoke-direct {v2, p0, v8}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)V

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->createBookingOrder(Lcom/didi/beatles/model/order/BtsOrderParams;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 356
    .end local v8           #model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    :catch_0
    move-exception v7

    .line 357
    .local v7, e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private getEstimatePrice()V
    .locals 6

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->calculateCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 319
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$4;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    iget-wide v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mCalPriceReqId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mCalPriceReqId:J

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->calculateCost(Lcom/didi/beatles/model/order/BtsOrderParams;Lcom/didi/beatles/net/BtsResponseListener;J)V

    .line 344
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f07003f

    .line 133
    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    .line 134
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setListener(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;)V

    .line 135
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getCreationTxt()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, cration:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getValuation()Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getTitleBar()Lcom/didi/beatles/ui/component/BtsTitleBar;

    move-result-object v2

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 138
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getTitleBar()Lcom/didi/beatles/ui/component/BtsTitleBar;

    move-result-object v2

    const v3, 0x7f0b00bd

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->valuationOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getTitleBar()Lcom/didi/beatles/ui/component/BtsTitleBar;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$1;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawableListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->validateSetupTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, setupTime:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->isTimeAvailable(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setBookingTime()V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->from:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v2}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->to:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderParams;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setFromText(Lcom/didi/common/model/Address;I)V

    .line 154
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderParams;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setToText(Lcom/didi/common/model/Address;I)V

    .line 163
    .end local v1           #setupTime:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderParams;->old_oid:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oidStr:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsOrderParams;->old_oid:Ljava/lang/String;

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getEstimatePrice()V

    .line 169
    return-void

    .line 156
    :cond_3
    new-instance v2, Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsOrderParams;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    .line 157
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->from:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/beatles/model/order/BtsOrderParams;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 160
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setFromText(Lcom/didi/common/model/Address;I)V

    goto :goto_0
.end method

.method private isTimeAvailable(Ljava/lang/Long;)Z
    .locals 6
    .parameter "time"

    .prologue
    .line 633
    new-instance v0, Lcom/didi/common/base/DateTime;

    invoke-direct {v0}, Lcom/didi/common/base/DateTime;-><init>()V

    .line 634
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/didi/common/base/DateTime;->addMinute(I)V

    .line 635
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 636
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v3, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 637
    new-instance v2, Lcom/didi/common/base/DateTime;

    invoke-direct {v2, v1}, Lcom/didi/common/base/DateTime;-><init>(Ljava/util/Calendar;)V

    .line 638
    .local v2, dateTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v2, v0}, Lcom/didi/common/base/DateTime;->isAfter(Lcom/didi/common/base/DateTime;)Z

    move-result v3

    return v3
.end method

.method private onEndAddressSelected(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "endAddress"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    const v1, 0x7f07003f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setToText(Lcom/didi/common/model/Address;I)V

    .line 305
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/model/order/BtsOrderParams;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 306
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getEstimatePrice()V

    .line 311
    :cond_0
    return-void
.end method

.method private onStartAddressSelected(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "startAddress"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    const v1, 0x7f07003f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setFromText(Lcom/didi/common/model/Address;I)V

    .line 297
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/model/order/BtsOrderParams;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 298
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getEstimatePrice()V

    .line 300
    :cond_0
    return-void
.end method

.method private orderCreateFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "btsOrderPassenger"

    .prologue
    .line 398
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 399
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->errno:I

    const v1, 0x15f91

    if-ne v0, v1, :cond_0

    .line 400
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->checkWexinPay(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->errno:I

    const v1, 0x17ae8

    if-ne v0, v1, :cond_1

    .line 402
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->checkOrderStatus(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 108
    iput-boolean v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mIsResendOrder:Z

    .line 130
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v3, "from_params"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const-string v3, "from_params"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/model/order/BtsOrderParams;

    iput-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    .line 114
    iput-boolean v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->isCalculate:Z

    .line 116
    :cond_1
    const-string v3, "oldOrderId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oidStr:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oidStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    iput-boolean v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mIsResendOrder:Z

    .line 119
    const-string v3, "oldOrderFrom"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, orderFrom:I
    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2

    .line 121
    sget-object v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->WAIT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    iput-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    goto :goto_0

    .line 122
    :cond_2
    const/16 v3, 0xca

    if-ne v2, v3, :cond_3

    .line 123
    sget-object v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->LIST:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    iput-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->OTHER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    iput-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    goto :goto_0

    .line 128
    .end local v2           #orderFrom:I
    :cond_4
    iput-boolean v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mIsResendOrder:Z

    goto :goto_0
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 286
    if-eqz p1, :cond_0

    move v2, v1

    .line 287
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 288
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 286
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 287
    goto :goto_1
.end method

.method private resetSaveInstance()V
    .locals 2

    .prologue
    .line 628
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->setmIsCheckWeixin(Z)V

    .line 629
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->setBtsOrderParams(Lcom/didi/beatles/model/order/BtsOrderParams;)V

    .line 630
    return-void
.end method

.method private showWXLowVersionDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 591
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 592
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0475

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 595
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 596
    return-void
.end method

.method private showWXUnstalledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    const-string v1, "wanliu_confirm_uninstall_weixin_show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 580
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 581
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0599

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 584
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 585
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderParams;I)V
    .locals 3
    .parameter "activity"
    .parameter "btsOrderParams"
    .parameter "oldOrderFrom"

    .prologue
    .line 86
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "from_params"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const-string v2, "oldOrderFrom"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "oldOrderId"
    .parameter "oldOrderFrom"

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "oldOrderId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "oldOrderFrom"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private validateSetupTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "setupTime"

    .prologue
    .line 172
    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTime()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTimeBackup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 260
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 262
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "search_extra_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/Address;

    .line 263
    .local v2, startAdress:Lcom/didi/common/model/Address;
    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 264
    invoke-direct {p0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->onStartAddressSelected(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 267
    .end local v2           #startAdress:Lcom/didi/common/model/Address;
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "search_extra_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 268
    .local v0, endAdress:Lcom/didi/common/model/Address;
    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->onEndAddressSelected(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 272
    .end local v0           #endAdress:Lcom/didi/common/model/Address;
    :sswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bts_remark_content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, extra:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v3, v1}, Lcom/didi/beatles/model/order/BtsOrderParams;->setExtraInfo(Ljava/lang/String;)V

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {v3, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->changeRemarkState(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x2712 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->parseIntent()V

    .line 100
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->initView()V

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->resetSaveInstance()V

    .line 103
    return-void
.end method

.method public onFromSelected()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->redirectToSearch(Z)V

    .line 517
    return-void
.end method

.method public onGetOrderTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0, p1, p2}, Lcom/didi/beatles/model/order/BtsOrderParams;->setSetupTime(J)V

    .line 601
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->getEstimatePrice()V

    .line 603
    :cond_0
    return-void
.end method

.method public onPriceSelected()V
    .locals 4

    .prologue
    .line 607
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    :goto_0
    return-void

    .line 610
    :cond_0
    const-string v2, "pbp1orderpage03_ck"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 613
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "remark"

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderParams;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 615
    const/16 v2, 0x2712

    invoke-virtual {p0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onSubmitClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->checkOrderInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mIsResendOrder:Z

    if-eqz v0, :cond_1

    .line 528
    sget-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$9;->$SwitchMap$com$didi$beatles$ui$activity$passenger$BtsPassengerBookingActivity$OldOrderFrom:[I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->oldOrderFrom:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->creatBtsOrder()V

    .line 544
    :cond_0
    return-void

    .line 530
    :pswitch_0
    const-string v0, "pbp1nfr02_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :pswitch_1
    const-string v0, "pbpxwhorder06_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_1
    const-string v0, "pbp1orderpage01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSwitchAdress(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "form"
    .parameter "to"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/model/order/BtsOrderParams;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 621
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    invoke-virtual {v0, p2}, Lcom/didi/beatles/model/order/BtsOrderParams;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 622
    return-void
.end method

.method public onToSelected()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->redirectToSearch(Z)V

    .line 522
    return-void
.end method
