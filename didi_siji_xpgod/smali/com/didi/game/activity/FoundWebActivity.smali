.class public Lcom/didi/game/activity/FoundWebActivity;
.super Lcom/didi/common/ui/webview/OldWebActivity;
.source "FoundWebActivity.java"


# instance fields
.field private bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

.field private businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

.field private checkInstall:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

.field private checkUpdateJob:Lthread/Job;

.field private commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

.field private instance:Lcom/didi/game/activity/FoundWebActivity;

.field private mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

.field private openGameInfoFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

.field private startOrDownFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

.field private wxPayResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/pay/common/bean/CommonPayRespListener",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/didi/game/activity/FoundWebActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/FoundWebActivity$2;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->wxPayResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    .line 270
    new-instance v0, Lcom/didi/game/activity/FoundWebActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/FoundWebActivity$5;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->openGameInfoFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    .line 309
    new-instance v0, Lcom/didi/game/activity/FoundWebActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/FoundWebActivity$6;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->startOrDownFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    .line 357
    new-instance v0, Lcom/didi/game/activity/FoundWebActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/FoundWebActivity$7;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->checkInstall:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    .line 404
    new-instance v0, Lcom/didi/game/activity/FoundWebActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/FoundWebActivity$8;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/OldJavaScriptBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/game/activity/FoundWebActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/didi/game/activity/FoundWebActivity;Lthread/Job;)Lthread/Job;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity;->checkUpdateJob:Lthread/Job;

    return-object p1
.end method

.method static synthetic access$400(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/game/activity/FoundWebActivity;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    return-object v0
.end method

.method private addCallToDriver()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/didi/game/activity/FoundWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    move-result-object v0

    .line 106
    .local v0, javab:Lcom/didi/common/ui/webview/OldJavaScriptBridge;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "o2o_business_mode"

    new-instance v2, Lcom/didi/game/activity/FoundWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/FoundWebActivity$1;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method

.method private addCheckInstall()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "checkInstall"

    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity;->checkInstall:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method

.method private addDownloadGame()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "downloadGame"

    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity;->startOrDownFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method

.method private addEnterGame()V
    .locals 3

    .prologue
    .line 172
    const-string v0, "------>FoundWebActivity addEnterGame"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "enterGame"

    new-instance v2, Lcom/didi/game/activity/FoundWebActivity$3;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/FoundWebActivity$3;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    .line 205
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "updatedidi"

    new-instance v2, Lcom/didi/game/activity/FoundWebActivity$4;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/FoundWebActivity$4;-><init>(Lcom/didi/game/activity/FoundWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method

.method private addJavaScriptInterfaces()V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addEnterGame()V

    .line 81
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addDownloadGame()V

    .line 82
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addStartGame()V

    .line 83
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addOpenGameInfo()V

    .line 84
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addCheckInstall()V

    .line 85
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addCallToDriver()V

    .line 86
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/didi/pay/helper/CommonPayHelper;

    iget-object v1, p0, Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v1}, Lcom/didi/pay/helper/CommonPayHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    iget-object v1, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v2, "payByWX"

    iget-object v3, p0, Lcom/didi/game/activity/FoundWebActivity;->wxPayResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/pay/helper/CommonPayHelper;->addJsPayByWX(Lcom/didi/common/ui/webview/OldJavaScriptBridge;Ljava/lang/String;Lcom/didi/pay/common/bean/CommonPayRespListener;)V

    .line 89
    return-void
.end method

.method private addOpenGameInfo()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "openGameInfo"

    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity;->openGameInfoFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method

.method private addStartGame()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "startGame"

    iget-object v2, p0, Lcom/didi/game/activity/FoundWebActivity;->startOrDownFunction:Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    const-string v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/OldWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/didi/game/activity/FoundWebActivity;->getmCommonWebView()Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    .line 61
    invoke-virtual {p0}, Lcom/didi/game/activity/FoundWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 62
    iput-object p0, p0, Lcom/didi/game/activity/FoundWebActivity;->instance:Lcom/didi/game/activity/FoundWebActivity;

    .line 63
    sput-object p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    .line 64
    invoke-virtual {p0}, Lcom/didi/game/activity/FoundWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    .line 65
    invoke-direct {p0}, Lcom/didi/game/activity/FoundWebActivity;->addJavaScriptInterfaces()V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->getInstance(Ljava/lang/String;)Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerPositionPushListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerBusinessPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->removeListener(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterBusinessPaySuccessListener()V

    .line 431
    invoke-super {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->onDestroy()V

    .line 432
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->checkUpdateJob:Lthread/Job;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->checkUpdateJob:Lthread/Job;

    invoke-virtual {v0}, Lthread/Job;->cancel()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->onRestart()V

    .line 421
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity;->bridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    const-string v1, "checkGameState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->callH5Method(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerHandler(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "methodName"
    .parameter "obj"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerHandler==methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    const-string v0, ""

    return-object v0
.end method
