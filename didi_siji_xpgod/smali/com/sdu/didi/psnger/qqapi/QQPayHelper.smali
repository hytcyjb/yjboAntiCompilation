.class public Lcom/sdu/didi/psnger/qqapi/QQPayHelper;
.super Ljava/lang/Object;
.source "QQPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;
    }
.end annotation


# static fields
.field private static final QQ_PAY_SCHEME_CARD_BINDING:Ljava/lang/String; = "mqqapi://forward/url?src_type=web&style=default&=1&version=1&url_prefix=aHR0cDovL2ltZ2NhY2hlLnFxLmNvbS9xcXNob3cvYXBwL2RpZGkvcHJveHlpbm5lci5odG1s"

.field private static final QQ_PAY_SCHEME_DATA:Ljava/lang/String; = "qwalletpay100884080"

.field private static sPaySerial:I = 0x0

.field private static final sQQPayAppId:Ljava/lang/String; = "100884080"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sPaySerial:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static checkQQPaySupport(Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 35
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v2

    .line 37
    .local v2, openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;
    invoke-interface {v2}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    .line 38
    .local v0, isInstalled:Z
    const-string v3, "pay"

    invoke-interface {v2, v3}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v1

    .line 40
    .local v1, isSupport:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;->onQQAppSupported()V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-interface {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;->onQQAppUnSupported()V

    goto :goto_0
.end method

.method public static checkQQPaySupport()Z
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v2

    .line 51
    .local v2, openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;
    invoke-interface {v2}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    .line 52
    .local v0, isInstalled:Z
    const-string v3, "pay"

    invoke-interface {v2, v3}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v1

    .line 53
    .local v1, isSupport:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "100884080"

    invoke-static {v0, v1}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v0

    return-object v0
.end method

.method public static handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)V
    .locals 1
    .parameter "intent"
    .parameter "l"

    .prologue
    .line 131
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    .line 132
    return-void
.end method

.method public static sendQQPayCheckRequest(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 138
    const-string v2, "mqqapi://forward/url?src_type=web&style=default&=1&version=1&url_prefix=aHR0cDovL2ltZ2NhY2hlLnFxLmNvbS9xcXNob3cvYXBwL2RpZGkvcHJveHlpbm5lci5odG1s"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, data:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static sendQQPayRequest(Lcom/didi/common/model/PayParams$QQParams;)V
    .locals 9
    .parameter "qqQayParams"

    .prologue
    .line 97
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/didi/common/model/PayParams$QQParams;->tokenId:Ljava/lang/String;

    .line 102
    .local v4, tokenId:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/common/model/PayParams$QQParams;->bargainorId:Ljava/lang/String;

    .line 103
    .local v1, bargainorId:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/common/model/PayParams$QQParams;->sign:Ljava/lang/String;

    .line 104
    .local v3, sign:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/model/PayParams$QQParams;->nonce:Ljava/lang/String;

    .line 106
    .local v2, nonce:Ljava/lang/String;
    new-instance v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    .line 107
    .local v0, api:Lcom/tencent/mobileqq/openpay/data/pay/PayApi;
    iget-object v5, p0, Lcom/didi/common/model/PayParams$QQParams;->appid:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/didi/common/model/PayParams$QQParams;->appid:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    .line 113
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sPaySerial:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sPaySerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    .line 114
    const-string v5, "qwalletpay100884080"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    .line 116
    const-string v5, ""

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    .line 117
    const-string v5, ""

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    .line 118
    iput-object v2, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    .line 119
    iput-object v4, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    .line 120
    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    .line 121
    iput-object v3, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    .line 122
    const-string v5, "HMAC-SHA1"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    .line 125
    invoke-virtual {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    goto :goto_0

    .line 110
    :cond_2
    const-string v5, "100884080"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    goto :goto_1
.end method

.method public static sendQQPayRequest(Lcom/didi/common/model/PayParams;)V
    .locals 9
    .parameter "payParams"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    if-nez v5, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    iget-object v4, v5, Lcom/didi/common/model/PayParams$QQParams;->tokenId:Ljava/lang/String;

    .line 67
    .local v4, tokenId:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    iget-object v1, v5, Lcom/didi/common/model/PayParams$QQParams;->bargainorId:Ljava/lang/String;

    .line 68
    .local v1, bargainorId:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    iget-object v3, v5, Lcom/didi/common/model/PayParams$QQParams;->sign:Ljava/lang/String;

    .line 69
    .local v3, sign:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    iget-object v2, v5, Lcom/didi/common/model/PayParams$QQParams;->nonce:Ljava/lang/String;

    .line 71
    .local v2, nonce:Ljava/lang/String;
    new-instance v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    .line 72
    .local v0, api:Lcom/tencent/mobileqq/openpay/data/pay/PayApi;
    const-string v5, "100884080"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sPaySerial:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sPaySerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    .line 75
    const-string v5, "qwalletpay100884080"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    .line 77
    const-string v5, ""

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    .line 78
    const-string v5, ""

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    .line 79
    iput-object v2, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    .line 80
    iput-object v4, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    .line 81
    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    .line 82
    iput-object v3, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    .line 83
    const-string v5, "HMAC-SHA1"

    iput-object v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    .line 86
    invoke-virtual {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->getOpenApi()Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    goto :goto_0
.end method
