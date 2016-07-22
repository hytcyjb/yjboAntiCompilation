.class public Lcom/didi/car/helper/CarResendHelper;
.super Ljava/lang/Object;
.source "CarResendHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeedResend()Z
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static onOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    if-eqz p0, :cond_0

    .line 48
    const v0, 0x7f0b035d

    invoke-virtual {p0, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 53
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setOid(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 60
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 62
    :cond_3
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showCarWaitForResponseFragment()V

    .line 63
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->show()V

    .line 64
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    goto :goto_0
.end method

.method public static reSendOrderWithoutCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 36
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showCarWaitForResponseFragment()V

    .line 40
    :goto_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->show()V

    .line 41
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 42
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showFlierWaitForResponseFragment()V

    goto :goto_0
.end method
