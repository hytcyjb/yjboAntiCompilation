.class public Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private notifyWeiXinPaymentResult(Z)V
    .locals 4
    .parameter "ret"

    .prologue
    .line 140
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 141
    .local v0, result:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean p1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 142
    const v1, 0x7f0b0197

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 143
    const/4 v1, 0x2

    iput v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    .line 144
    const-string v1, "PaymentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pay result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V
    .locals 0
    .parameter "payHelper"

    .prologue
    .line 44
    sput-object p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f0300d9

    invoke-virtual {p0, v1}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setContentView(I)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrderHelper.getBusiness().name()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    if-nez v1, :cond_6

    .line 53
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 54
    .local v0, slideFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 74
    .end local v0           #slideFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_0
    :goto_0
    const-string v1, "PaymentManager"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 76
    return-void

    .line 57
    .restart local v0       #slideFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    :cond_3
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    goto :goto_0

    .line 62
    :cond_4
    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    sget-object v1, Lcom/didi/beatles/helper/BtsPayHelper;->mAppid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    goto :goto_0

    .line 64
    :cond_5
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "wxd5b252a1660012b4"

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 66
    iget-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v2, "wxd5b252a1660012b4"

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 71
    .end local v0           #slideFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_6
    sget-object v1, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    invoke-virtual {v1}, Lcom/didi/pay/helper/CommonPayHelper;->getmApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 83
    const-string v0, "PaymentManager"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 88
    const-string v0, "PaymentManager"

    const-string v1, "onReq"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 8
    .parameter "resp"

    .prologue
    .line 93
    const-string v5, "PaymentManager"

    const-string v6, "onResp"

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 96
    :try_start_0
    sget-object v5, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    if-nez v5, :cond_6

    .line 97
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    .line 99
    .local v2, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    instance-of v5, v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    if-eqz v5, :cond_0

    .line 100
    move-object v0, v2

    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    move-object v3, v0

    .line 101
    .local v3, payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    invoke-virtual {v3, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onWXPay(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 104
    .end local v3           #payFragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    :cond_0
    instance-of v5, v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    if-eqz v5, :cond_1

    .line 105
    move-object v0, v2

    check-cast v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    move-object v3, v0

    .line 106
    .local v3, payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    new-instance v4, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v4}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>()V

    .line 107
    .local v4, payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v4, v5}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 108
    iget-object v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrmsg(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPay(Lcom/didi/pay/common/bean/CommonPayResp;)V

    .line 112
    .end local v3           #payFragment:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
    .end local v4           #payResp:Lcom/didi/pay/common/bean/CommonPayResp;
    :cond_1
    instance-of v5, v2, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    if-eqz v5, :cond_2

    .line 113
    move-object v0, v2

    check-cast v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    move-object v3, v0

    .line 114
    .local v3, payFragment:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
    invoke-virtual {v3, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->onPay(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 116
    .end local v3           #payFragment:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
    :cond_2
    sget-object v5, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v5}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-static {p1}, Lcom/didi/beatles/helper/BtsPayHelper;->onPayResponse(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 120
    :cond_3
    instance-of v5, v2, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    if-eqz v5, :cond_4

    .line 121
    const-string v5, "PaymentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v5, :cond_5

    .line 123
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->notifyWeiXinPaymentResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->finish()V

    .line 137
    return-void

    .line 124
    .restart local v2       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_5
    :try_start_1
    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_4

    .line 126
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->notifyWeiXinPaymentResult(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    .end local v2           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_2
    sget-object v5, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    new-instance v6, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v6, p1}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/didi/pay/helper/CommonPayHelper;->onWXPayResponse(Lcom/didi/pay/common/bean/CommonPayResp;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
