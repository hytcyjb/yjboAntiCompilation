.class public Lcom/didi/ddrive/payment/WeiXinPayMethod;
.super Lcom/didi/ddrive/payment/PayMethod;
.source "WeiXinPayMethod.java"


# static fields
.field public static final CANCEL:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final RESULT_OK:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/didi/ddrive/payment/PayMethod;-><init>(Landroid/app/Activity;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onPay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V
    .locals 8
    .parameter "bill"
    .parameter "sign"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 33
    iget-object v4, p0, Lcom/didi/ddrive/payment/WeiXinPayMethod;->mActivity:Landroid/app/Activity;

    const-string v5, "wxd5b252a1660012b4"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    .line 34
    .local v1, msgApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v4, "wxd5b252a1660012b4"

    invoke-interface {v1, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 35
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 36
    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 39
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean v6, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 40
    iput v7, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    .line 41
    const v4, 0x7f0b01c7

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 65
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v2, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 46
    .local v2, paymentRequest:Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->appId:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 47
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->mchId:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 48
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->prepayId:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 49
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->nonceStr:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 50
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->packageStr:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 51
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->sign:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 52
    iget-object v4, p2, Lcom/didi/ddrive/net/http/response/PaySign;->timeStamp:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 54
    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v3

    .line 55
    .local v3, ret:Z
    const-string v4, "PaymentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weixin called "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v2           #paymentRequest:Lcom/tencent/mm/sdk/modelpay/PayReq;
    .end local v3           #ret:Z
    :cond_1
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 59
    .restart local v0       #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean v6, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 60
    iput v7, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    .line 61
    const v4, 0x7f0b01c6

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
