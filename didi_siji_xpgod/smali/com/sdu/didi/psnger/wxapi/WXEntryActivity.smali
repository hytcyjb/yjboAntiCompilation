.class public Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field public static from:I


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private appId:Ljava/lang/String;

.field private fromScene:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onWXReqSuccess()V
    .locals 6

    .prologue
    const/16 v2, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->fromScene:I

    if-nez v0, :cond_0

    .line 153
    const-string v0, "my_trip_friend_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    const-string v0, "taxi_my_trip_friend_circ_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    :cond_0
    sget v0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    if-ne v0, v5, :cond_1

    .line 157
    const-string v0, "activity_friend_circ_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    :cond_1
    iget v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->fromScene:I

    if-ne v0, v4, :cond_2

    .line 160
    const-string v0, "my_trip_friend_circ_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    const-string v0, "taxi_my_trip_friend_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    :cond_2
    sget v0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    if-ne v0, v2, :cond_3

    .line 164
    const-string v0, "activity_friend_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    :cond_3
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    iget v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->fromScene:I

    if-nez v0, :cond_4

    .line 170
    const-string v0, "udache_my_trip_friend_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    :cond_4
    sget v0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    if-ne v0, v2, :cond_5

    .line 175
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    const-string v1, "pay_share_suc_channel_ck"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_5
    iget v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->fromScene:I

    if-ne v0, v4, :cond_6

    .line 179
    const-string v0, "wanliu_my_trip_friend_successed"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    :cond_6
    sget v0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    if-ne v0, v5, :cond_7

    .line 184
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    const-string v1, "pay_share_suc_channel_ck"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0300d9

    invoke-virtual {p0, v0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->setContentView(I)V

    .line 52
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 54
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 69
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_APP_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 72
    return-void

    .line 55
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    :cond_3
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 58
    sget-object v0, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    const-string v0, "wxd5b252a1660012b4"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 61
    const-string v0, "wxd5b252a1660012b4"

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_5
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "wxd5b252a1660012b4"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 64
    iget-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wxd5b252a1660012b4"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 79
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 83
    instance-of v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    .end local p1
    iget v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    iput v0, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->fromScene:I

    .line 86
    :cond_0
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 9
    .parameter "resp"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WxMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WxMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WxMessage: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errcode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " openid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 97
    iget v4, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "wxd5b252a1660012b4"

    iget-object v5, p0, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "weixin auth failed."

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 101
    new-instance v4, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;

    invoke-direct {v4, v8, v7}, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;-><init>(ZLjava/lang/String;)V

    const-string v5, "BTS_WEIXIN_GET_CODE"

    invoke-static {v4, v5}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->finish()V

    .line 145
    .end local p1
    :goto_0
    return-void

    .line 108
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 110
    :try_start_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    .line 111
    .local v1, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    const-class v4, Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    const-class v4, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    const-class v4, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/didi/common/util/CollectionUtil;->inCollection(Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v2

    .line 116
    .local v2, inCollection:Z
    if-eqz v2, :cond_1

    .line 117
    iget v4, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v4, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->onWXReqSuccess()V

    .line 121
    const/4 v4, 0x1

    sget v5, Lcom/didi/common/ui/component/Share;->mShareActivty:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/didi/common/net/CommonRequest;->uploadShareRe(IILcom/didi/common/net/ResponseListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0461

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v2           #inCollection:Z
    .end local v3           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    .end local p1
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 144
    invoke-virtual {p0}, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 123
    .restart local v1       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .restart local v2       #inCollection:Z
    .restart local v3       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    .restart local p1
    :cond_2
    :try_start_1
    iget-object v4, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    iget-object v4, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 128
    .end local v1           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    .end local v2           #inCollection:Z
    .end local v3           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WxMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    iget v4, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v4, :cond_4

    .line 134
    const-string v4, "try to GetWeishiTokenTask"

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 135
    new-instance v4, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;

    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .end local p1
    iget-object v5, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;-><init>(ZLjava/lang/String;)V

    const-string v5, "BTS_WEIXIN_GET_CODE"

    invoke-static {v4, v5}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .restart local p1
    :cond_4
    const-string v4, "weixin auth failed."

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 138
    new-instance v4, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;

    invoke-direct {v4, v8, v7}, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;-><init>(ZLjava/lang/String;)V

    const-string v5, "BTS_WEIXIN_GET_CODE"

    invoke-static {v4, v5}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
