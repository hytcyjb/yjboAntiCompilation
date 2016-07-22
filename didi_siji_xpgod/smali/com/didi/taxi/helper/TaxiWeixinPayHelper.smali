.class public Lcom/didi/taxi/helper/TaxiWeixinPayHelper;
.super Ljava/lang/Object;
.source "TaxiWeixinPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;
    }
.end annotation


# static fields
.field private static final WEXIN_PROCCESS_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 33
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 34
    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 36
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private genSign(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/16 v3, 0x3d

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 120
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getInstallAPKInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "pak"

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, versionName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 71
    .local v1, pakinfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 72
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #pakinfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkWxSupport(Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;->onWXAppUnInstalled()V

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    invoke-direct {p0, v1, v2}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->getInstallAPKInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, wxVersion:Ljava/lang/String;
    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;->onWXAppLowVersionInstalled()V

    goto :goto_0

    .line 61
    .end local v0           #wxVersion:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;->onWXAppSupported()V

    goto :goto_0
.end method

.method public sendWXPayCheckRequest(Landroid/content/Context;)V
    .locals 2
    .parameter "cxt"

    .prologue
    .line 135
    new-instance v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;-><init>()V

    .line 136
    .local v0, req:Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_USER_NAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->toUserName:Ljava/lang/String;

    .line 137
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->webType:I

    .line 138
    const-string v1, "didi"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->extMsg:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 141
    return-void
.end method

.method public sendWXPayRequest(Lcom/didi/common/model/PayParams;)V
    .locals 5
    .parameter "params"

    .prologue
    .line 82
    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 84
    .local v0, req:Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    if-nez v2, :cond_0

    .line 85
    sget-object v2, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 86
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->partnerId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 87
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->prepayId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 88
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->nonceStr:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 89
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->timeStamp:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 90
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->packageValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 93
    .local v1, signParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appid"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appkey"

    iget-object v4, p1, Lcom/didi/common/model/PayParams;->appkey:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "noncestr"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "package"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "partnerid"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "prepayid"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "timestamp"

    iget-object v4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0, v1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->genSign(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 113
    .end local v1           #signParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    iget-object v2, p0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 114
    return-void

    .line 103
    :cond_0
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->appId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 104
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->partnerId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 105
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->prepayId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 106
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->nonceStr:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 107
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->timeStamp:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 108
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->packageValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 109
    iget-object v2, p1, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams$WXParams;->sign:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    goto :goto_0
.end method
