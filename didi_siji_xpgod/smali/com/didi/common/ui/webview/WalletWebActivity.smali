.class public Lcom/didi/common/ui/webview/WalletWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "WalletWebActivity.java"


# instance fields
.field private commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

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
    .line 25
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/didi/common/ui/webview/WalletWebActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/WalletWebActivity$2;-><init>(Lcom/didi/common/ui/webview/WalletWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WalletWebActivity;->wxPayResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    return-void
.end method

.method private addCallToDriver()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WalletWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    .line 53
    .local v0, javab:Lcom/didi/common/ui/webview/JavascriptBridge;
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "o2o_business_mode"

    new-instance v2, Lcom/didi/common/ui/webview/WalletWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/WalletWebActivity$1;-><init>(Lcom/didi/common/ui/webview/WalletWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 40
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

    .line 41
    const-string v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "Wallet onCreate"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WalletWebActivity;->addCallToDriver()V

    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/webview/WalletWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/didi/pay/helper/CommonPayHelper;

    invoke-direct {v0, p0}, Lcom/didi/pay/helper/CommonPayHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WalletWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/WalletWebActivity;->commonPayHelper:Lcom/didi/pay/helper/CommonPayHelper;

    sget-object v1, Lcom/didi/common/ui/webview/WalletWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v2, "payByWX"

    iget-object v3, p0, Lcom/didi/common/ui/webview/WalletWebActivity;->wxPayResponseListener:Lcom/didi/pay/common/bean/CommonPayRespListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/pay/helper/CommonPayHelper;->addJsPayByWX(Lcom/didi/common/ui/webview/JavascriptBridge;Ljava/lang/String;Lcom/didi/pay/common/bean/CommonPayRespListener;)V

    .line 36
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "methodName"
    .parameter "obj"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 46
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

    .line 47
    const-string v0, ""

    return-object v0
.end method
