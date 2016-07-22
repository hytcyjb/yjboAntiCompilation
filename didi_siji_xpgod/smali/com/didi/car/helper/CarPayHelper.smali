.class public Lcom/didi/car/helper/CarPayHelper;
.super Ljava/lang/Object;
.source "CarPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;
    }
.end annotation


# static fields
.field private static final WEXIN_PROCCESS_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)V
    .locals 0
    .parameter "context"
    .parameter "api"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/didi/car/helper/CarPayHelper;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/didi/car/helper/CarPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 36
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

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 110
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
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
    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, versionName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 67
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 68
    .local v1, pakinfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 69
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #pakinfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z
    .locals 4
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    .line 44
    iget-object v2, p0, Lcom/didi/car/helper/CarPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/didi/car/helper/CarPayHelper;->mListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    invoke-interface {v2}, Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;->onWXAppUnInstalled()V

    .line 58
    :goto_0
    return v1

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/didi/car/helper/CarPayHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.tencent.mm"

    invoke-direct {p0, v2, v3}, Lcom/didi/car/helper/CarPayHelper;->getInstallAPKInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, wxVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "5.3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/didi/car/helper/CarPayHelper;->mListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    invoke-interface {v2}, Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;->onWXAppLowVersionInstalled()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/didi/car/helper/CarPayHelper;->mListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    invoke-interface {v1, p1}, Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;->onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendWXPayRequest(Lcom/didi/car/model/CarPayParams;)V
    .locals 6
    .parameter "params"

    .prologue
    .line 79
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 80
    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 81
    .local v1, req:Lcom/tencent/mm/sdk/modelpay/PayReq;
    sget-object v3, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 82
    iget-object v3, p1, Lcom/didi/car/model/CarPayParams;->partnerId:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 83
    iget-object v3, p1, Lcom/didi/car/model/CarPayParams;->prepayId:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lcom/didi/car/model/CarPayParams;->nonceStr:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 85
    iget-object v3, p1, Lcom/didi/car/model/CarPayParams;->timeStamp:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 86
    iget-object v3, p1, Lcom/didi/car/model/CarPayParams;->packageValue:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 88
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .local v2, signParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appid"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appkey"

    iget-object v5, p1, Lcom/didi/car/model/CarPayParams;->appkey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "noncestr"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "package"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "partnerid"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "prepayid"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "timestamp"

    iget-object v5, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarPayHelper;->genSign(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/didi/car/helper/CarPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v0

    .line 101
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 104
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/didi/car/helper/CarPayHelper;->mListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    .line 40
    return-void
.end method
