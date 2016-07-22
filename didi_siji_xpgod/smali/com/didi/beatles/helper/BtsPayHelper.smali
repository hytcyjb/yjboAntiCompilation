.class public Lcom/didi/beatles/helper/BtsPayHelper;
.super Ljava/lang/Object;
.source "BtsPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;,
        Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;
    }
.end annotation


# static fields
.field private static final WEXIN_PROCCESS_NAME:Ljava/lang/String; = "com.tencent.mm"

.field public static mAppid:Ljava/lang/String;

.field private static payResultListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;


# instance fields
.field mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    sput-object v0, Lcom/didi/beatles/helper/BtsPayHelper;->mAppid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "appid"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput-object p2, Lcom/didi/beatles/helper/BtsPayHelper;->mAppid:Ljava/lang/String;

    .line 37
    sget-object v1, Lcom/didi/beatles/helper/BtsPayHelper;->mAppid:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 38
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v1, Lcom/didi/beatles/helper/BtsPayHelper;->mAppid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 39
    iput-object v0, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 40
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mContext:Landroid/content/Context;

    .line 41
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

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 131
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
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
    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, versionName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 97
    .local v1, pakinfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 98
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #pakinfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static onPayResponse(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 2
    .parameter "resp"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPayResponse onResp errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",openId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/didi/beatles/helper/BtsPayHelper;->payResultListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/didi/beatles/helper/BtsPayHelper;->payResultListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;

    invoke-interface {v0, p0}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;->onPayResopnse(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public checkWxSupport(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 3
    .parameter "helper"
    .parameter "t"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->beginCheckWXState()V

    .line 49
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->onWXAppUnInstalled()V

    .line 54
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->endCheckWXState()V

    .line 72
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    invoke-direct {p0, v1, v2}, Lcom/didi/beatles/helper/BtsPayHelper;->getInstallAPKInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, wxVersion:Ljava/lang/String;
    const-string v1, "5.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->onWXAppLowVersionInstalled()V

    .line 66
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->endCheckWXState()V

    goto :goto_0

    .line 70
    .end local v0           #wxVersion:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->endCheckWXState()V

    .line 71
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v1, p1, p2}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->onWXAppSupported(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    goto :goto_0
.end method

.method public checkWxSupport()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v2}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->onWXAppUnInstalled()V

    .line 88
    :goto_0
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.tencent.mm"

    invoke-direct {p0, v2, v3}, Lcom/didi/beatles/helper/BtsPayHelper;->getInstallAPKInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, wxVersion:Ljava/lang/String;
    const-string v2, "5.3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    invoke-interface {v2}, Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;->onWXAppLowVersionInstalled()V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendWXPayCheckRequest(Landroid/content/Context;)V
    .locals 2
    .parameter "cxt"

    .prologue
    .line 146
    new-instance v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;-><init>()V

    .line 147
    .local v0, req:Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_USER_NAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->toUserName:Ljava/lang/String;

    .line 148
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->webType:I

    .line 149
    const-string v1, "didi"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->extMsg:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 152
    return-void
.end method

.method public sendWXPayRequest(Landroid/content/Context;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;)V
    .locals 4
    .parameter "context"
    .parameter "params"
    .parameter "payResultListener"

    .prologue
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWXPayRequest params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 110
    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 111
    .local v1, req:Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->appid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 112
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->partnerid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 113
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->prepayId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 114
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->nonceStr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 115
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->timestamp:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 116
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->packageStr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 117
    iget-object v2, p2, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v0

    .line 121
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 125
    :cond_0
    sput-object p3, Lcom/didi/beatles/helper/BtsPayHelper;->payResultListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;

    .line 126
    return-void
.end method

.method public setListener(Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPayHelper;->mListener:Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;

    .line 45
    return-void
.end method
