.class public Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "TaxiEndOrderActivity.java"


# static fields
.field private static final END_REASON_ID:Ljava/lang/String; = "orver_tip_id"

.field private static final END_REASON_TITLE:Ljava/lang/String; = "orver_tip_title"

.field private static final GUIDE_NOTICE:Ljava/lang/String; = "orderover_title"


# instance fields
.field private callDriverListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mReaCode:[Ljava/lang/String;

.field private onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private submitConfirmListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private taxi:Lcom/didi/taxi/model/TaxiOrder;

.field private viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 424
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$9;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submitConfirmListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 439
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$10;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->callDriverListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 484
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 519
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$12;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 547
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$13;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$13;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->back()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->doSubmitConfirm()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showCallDriverDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submit(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showSubmitConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;ZLcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onFinishOrder(ZLcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reSendOrder()V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->finish()V

    .line 89
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->overridePendingTransition(II)V

    .line 90
    return-void
.end method

.method private checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 295
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reSendOrder()V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 299
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createBookingOrder()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 292
    return-void
.end method

.method private createRealtimeOrder()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$6;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$6;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 269
    return-void
.end method

.method private doSubmitConfirm()V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->doFinishOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 176
    return-void
.end method

.method private getReasonsTitle()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    const-string v3, "Not Found"

    .line 123
    .local v3, string:Ljava/lang/String;
    const-string v5, "orver_tip_id"

    invoke-static {v5}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v5, "Not Found"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    .line 129
    :goto_0
    const-string v4, "Not Found"

    .line 130
    .local v4, title:Ljava/lang/String;
    const-string v5, "orver_tip_title"

    invoke-static {v5}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    const-string v5, "Not Found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, mReaTitle:[Ljava/lang/String;
    :goto_1
    const-string v2, "Not Found"

    .line 139
    .local v2, notice:Ljava/lang/String;
    const-string v5, "orderover_title"

    invoke-static {v5}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v5, "Not Found"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    :cond_0
    const v5, 0x7f0b0343

    invoke-virtual {p0, v5}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, mNoticeText:Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/frame/endorder/EndOrderViewHelper;->setReasonCode([Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderViewHelper;->setReason([Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderViewHelper;->setNoticeText(Ljava/lang/String;)V

    .line 148
    return-void

    .line 127
    .end local v0           #mNoticeText:Ljava/lang/String;
    .end local v1           #mReaTitle:[Ljava/lang/String;
    .end local v2           #notice:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "30"

    aput-object v6, v5, v7

    const-string v6, "31"

    aput-object v6, v5, v8

    const-string v6, "32"

    aput-object v6, v5, v9

    iput-object v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    goto :goto_0

    .line 134
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    new-array v1, v10, [Ljava/lang/String;

    const v5, 0x7f0b0264

    invoke-virtual {p0, v5}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    const v5, 0x7f0b026b

    invoke-virtual {p0, v5}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const v5, 0x7f0b051a

    invoke-virtual {p0, v5}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .restart local v1       #mReaTitle:[Ljava/lang/String;
    goto :goto_1

    .line 143
    .restart local v2       #notice:Ljava/lang/String;
    :cond_3
    move-object v0, v2

    .restart local v0       #mNoticeText:Ljava/lang/String;
    goto :goto_2
.end method

.method private onFinishOrder(ZLcom/didi/common/model/BaseObject;)V
    .locals 6
    .parameter "showRecallDialogFlag"
    .parameter "obj"

    .prologue
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoNeed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/didi/common/model/BaseObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 199
    if-eqz p2, :cond_0

    .line 200
    const v2, 0x7f0b0322

    invoke-virtual {p2, v2}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 201
    :cond_0
    invoke-static {p2}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    invoke-static {p2}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 207
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transportTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 209
    .local v0, cha:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transportTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v2, v3, :cond_4

    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V

    goto :goto_0

    .line 214
    :cond_4
    if-eqz p1, :cond_5

    .line 215
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showRecallDialog()V

    goto :goto_0

    .line 217
    :cond_5
    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-interface {v2}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->cancel()V

    goto/16 :goto_0

    .line 220
    .end local v0           #cha:J
    :cond_6
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V

    goto/16 :goto_0
.end method

.method private onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 330
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :goto_0
    return-void

    .line 333
    :cond_1
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrder;->errno:I

    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrder;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showOnlyTextDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    sput v2, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 339
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showErrorDialog()V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v2, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 345
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 346
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_4

    .line 347
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setTransportTime(J)V

    .line 348
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 350
    :cond_4
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->finish()V

    .line 351
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$8;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->show()V

    .line 359
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    goto :goto_0
.end method

.method private reSendOrder()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xdbba0

    .line 304
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->createRealtimeOrder()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 310
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 311
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->createBookingOrder()V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 317
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 318
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->createRealtimeOrder()V

    goto/16 :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0323

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 94
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0324

    new-instance v2, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$2;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private showCallDriverDialog()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b031d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 380
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 381
    const v1, 0x7f0b0206

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 382
    const v1, 0x7f0b036d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->callDriverListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 384
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 385
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 415
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b035d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 418
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 419
    return-void
.end method

.method private showOnlyTextDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 404
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 407
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 408
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 409
    const v1, 0x7f0b0523

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 411
    return-void
.end method

.method private showRecallDialog()V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v1, "choose_didi_again"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b04ad

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 395
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 396
    const v1, 0x7f0b0425

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 397
    const v1, 0x7f0b0421

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 399
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showSubmitConfirmDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 365
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0528

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 368
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 369
    const v1, 0x7f0b0525

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 370
    const v1, 0x7f0b0524

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submitConfirmListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 372
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 373
    return-void
.end method

.method private skipPage()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "NoNeed= skipPage"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 229
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 230
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getOpenActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 233
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;I)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->finish()V

    .line 237
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$5;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

.method private submit(Z)V
    .locals 5
    .parameter "showRecallDialogFlag"

    .prologue
    const/4 v4, 0x0

    .line 179
    const v0, 0x7f0b052b

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v4, v1}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 181
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonContent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V

    invoke-static {v0, v1, v2, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->doFinishOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 194
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onBackPressed()V

    .line 84
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->back()V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->overridePendingTransition(II)V

    .line 67
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, view:Lcom/didi/frame/endorder/EndOrderView;
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->setTitleBar()V

    .line 70
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->getReasonsTitle()V

    .line 71
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;

    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderViewHelper;->setViewListener(Lcom/didi/frame/endorder/EndOrderView$ViewListener;)V

    .line 72
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 78
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->stop()V

    .line 79
    return-void
.end method
