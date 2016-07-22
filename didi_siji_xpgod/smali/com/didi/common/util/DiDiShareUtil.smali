.class public Lcom/didi/common/util/DiDiShareUtil;
.super Ljava/lang/Object;
.source "DiDiShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isValidCheckWx(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 32
    sget-object v2, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 33
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v2, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 34
    new-instance v1, Lcom/didi/car/helper/CarPayHelper;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/didi/car/helper/CarPayHelper;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    .line 35
    .local v1, mPayHelper:Lcom/didi/car/helper/CarPayHelper;
    new-instance v2, Lcom/didi/common/util/DiDiShareUtil$1;

    invoke-direct {v2, p0}, Lcom/didi/common/util/DiDiShareUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPayHelper;->setListener(Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;)V

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPayHelper;->checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    .line 54
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 2
    .parameter "context"
    .parameter "model"
    .parameter "listener"

    .prologue
    .line 22
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/didi/common/util/DiDiShareUtil;->isValidCheckWx(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/sharesdk/onekeyshare/ShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0
.end method
