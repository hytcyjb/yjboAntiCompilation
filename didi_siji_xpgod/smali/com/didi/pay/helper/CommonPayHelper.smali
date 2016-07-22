.class public Lcom/didi/pay/helper/CommonPayHelper;
.super Ljava/lang/Object;
.source "CommonPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;,
        Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;,
        Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;
    }
.end annotation


# static fields
.field private static final WEXIN_PROCCESS_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static showLoading:Z

.field private static showToast:Z

.field private static wxVersion:Ljava/lang/String;


# instance fields
.field private asyncTask:Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;

.field private mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mContext:Landroid/content/Context;

.field private payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/pay/common/bean/CommonPayRespListener",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;"
        }
    .end annotation
.end field

.field private supportListener:Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 59
    sput-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showLoading:Z

    .line 64
    sput-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showToast:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sput-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showLoading:Z

    .line 84
    sput-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showToast:Z

    .line 85
    iput-object p1, p0, Lcom/didi/pay/helper/CommonPayHelper;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "com.tencent.mm"

    invoke-direct {p0, v0}, Lcom/didi/pay/helper/CommonPayHelper;->getInstallAPKInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/pay/helper/CommonPayHelper;->wxVersion:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showLoading:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/didi/pay/helper/CommonPayHelper;->showToast:Z

    return v0
.end method

.method static synthetic access$200(Lcom/didi/pay/helper/CommonPayHelper;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/didi/pay/helper/CommonPayHelper;->wxVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/pay/helper/CommonPayHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getInstallAPKInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pak"

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, versionName:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 199
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 200
    .local v1, pakinfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 201
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1           #pakinfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addJsPayByWX(Lcom/didi/common/ui/webview/JavascriptBridge;Ljava/lang/String;Lcom/didi/pay/common/bean/CommonPayRespListener;)V
    .locals 2
    .parameter "bridge"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/ui/webview/JavascriptBridge;",
            "Ljava/lang/String;",
            "Lcom/didi/pay/common/bean/CommonPayRespListener",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;,"Lcom/didi/pay/common/bean/CommonPayRespListener<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addJsPayByWX methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/didi/pay/helper/CommonPayHelper$1;

    invoke-direct {v0, p0, p3}, Lcom/didi/pay/helper/CommonPayHelper$1;-><init>(Lcom/didi/pay/helper/CommonPayHelper;Lcom/didi/pay/common/bean/CommonPayRespListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 124
    return-void
.end method

.method public addJsPayByWX(Lcom/didi/common/ui/webview/OldJavaScriptBridge;Ljava/lang/String;Lcom/didi/pay/common/bean/CommonPayRespListener;)V
    .locals 2
    .parameter "bridge"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/ui/webview/OldJavaScriptBridge;",
            "Ljava/lang/String;",
            "Lcom/didi/pay/common/bean/CommonPayRespListener",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;,"Lcom/didi/pay/common/bean/CommonPayRespListener<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addJsPayByWX methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/didi/pay/helper/CommonPayHelper$2;

    invoke-direct {v0, p0, p3}, Lcom/didi/pay/helper/CommonPayHelper$2;-><init>(Lcom/didi/pay/helper/CommonPayHelper;Lcom/didi/pay/common/bean/CommonPayRespListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V

    .line 161
    return-void
.end method

.method public getmApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method public onPayResponse(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .parameter "resp"

    .prologue
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayResponse resp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 254
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Lcom/didi/pay/common/bean/CommonPayResp;

    invoke-direct {v0, p1}, Lcom/didi/pay/common/bean/CommonPayResp;-><init>(Ljava/lang/Object;)V

    .line 256
    .local v0, payResp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 257
    sget-object v1, Lcom/didi/pay/helper/CommonPayHelper;->wxVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/pay/common/bean/CommonPayResp;->setWxVersion(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-interface {v1, v0}, Lcom/didi/pay/common/bean/CommonPayRespListener;->onPayResopnse(Lcom/didi/pay/common/bean/CommonPayResp;)V

    .line 262
    .end local v0           #payResp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayResponse resp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",payResponseListener is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWXPayResponse(Lcom/didi/pay/common/bean/CommonPayResp;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/pay/common/bean/CommonPayResp",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, resp:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPayResponse resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdu/didi/psnger/wxapi/WXPayEntryActivity;->setCommonPayHelper(Lcom/didi/pay/helper/CommonPayHelper;)V

    .line 273
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper;->payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/didi/pay/common/bean/CommonPayResp;->setErrno(I)V

    .line 275
    sget-object v0, Lcom/didi/pay/helper/CommonPayHelper;->wxVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/didi/pay/common/bean/CommonPayResp;->setWxVersion(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper;->payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-interface {v0, p1}, Lcom/didi/pay/common/bean/CommonPayRespListener;->onPayResopnse(Lcom/didi/pay/common/bean/CommonPayResp;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPayResponse resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",payResponseListener is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public payByWX(Lcom/didi/pay/common/bean/PrePayParam;Lcom/didi/pay/common/bean/CommonPayRespListener;)V
    .locals 4
    .parameter "prePayParam"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/pay/common/bean/PrePayParam;",
            "Lcom/didi/pay/common/bean/CommonPayRespListener",
            "<",
            "Lcom/tencent/mm/sdk/modelbase/BaseResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;,"Lcom/didi/pay/common/bean/CommonPayRespListener<Lcom/tencent/mm/sdk/modelbase/BaseResp;>;"
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->supportListener:Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;

    invoke-direct {v1, p0}, Lcom/didi/pay/helper/CommonPayHelper$WXCommonSupportListener;-><init>(Lcom/didi/pay/helper/CommonPayHelper;)V

    iput-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->supportListener:Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/didi/pay/common/bean/PrePayParam;->appid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 174
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v2, p1, Lcom/didi/pay/common/bean/PrePayParam;->appid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 175
    iput-object p2, p0, Lcom/didi/pay/helper/CommonPayHelper;->payResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    .line 176
    new-instance v1, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;

    iget-object v2, p0, Lcom/didi/pay/helper/CommonPayHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/didi/pay/helper/CommonPayHelper;->supportListener:Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    invoke-direct {v1, v2, v3}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;-><init>(Landroid/content/Context;Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;)V

    iput-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->asyncTask:Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;

    .line 177
    new-instance v0, Lcom/didi/game/model/DiDiParam;

    invoke-direct {v0}, Lcom/didi/game/model/DiDiParam;-><init>()V

    .line 178
    .local v0, param:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<Lcom/didi/pay/common/bean/PrePayParam;>;"
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/didi/game/model/DiDiParam;->setRequestFlag(I)V

    .line 179
    const-string v1, "prePayParam"

    invoke-virtual {v0, v1, p1}, Lcom/didi/game/model/DiDiParam;->addT(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->asyncTask:Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/didi/game/model/DiDiParam;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method

.method public sendWXPayCheckRequest(Landroid/content/Context;)V
    .locals 2
    .parameter "cxt"

    .prologue
    .line 237
    new-instance v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;-><init>()V

    .line 238
    .local v0, req:Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_TAXI_USER_NAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->toUserName:Ljava/lang/String;

    .line 239
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->webType:I

    .line 240
    const-string v1, "didi"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizWebview$Req;->extMsg:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper;->mApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 242
    return-void
.end method

.method public sendWXPayRequest(Lcom/tencent/mm/sdk/openapi/IWXAPI;Landroid/content/Context;Lcom/didi/pay/common/bean/PrePayParam;)V
    .locals 4
    .parameter "wxApi"
    .parameter "context"
    .parameter "params"

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWXPayRequest params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 219
    .local v1, req:Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->appid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 220
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->partnerid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 221
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->prepayId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 222
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->nonceStr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 223
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->timestamp:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 224
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->packageStr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 225
    iget-object v2, p3, Lcom/didi/pay/common/bean/PrePayParam;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 228
    invoke-interface {p1, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v0

    .line 229
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 233
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/didi/pay/helper/CommonPayHelper;->supportListener:Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    .line 191
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .parameter "showLoading"

    .prologue
    .line 75
    sput-boolean p1, Lcom/didi/pay/helper/CommonPayHelper;->showLoading:Z

    .line 76
    return-void
.end method

.method public setShowToast(Z)V
    .locals 0
    .parameter "showToast"

    .prologue
    .line 79
    sput-boolean p1, Lcom/didi/pay/helper/CommonPayHelper;->showToast:Z

    .line 80
    return-void
.end method
