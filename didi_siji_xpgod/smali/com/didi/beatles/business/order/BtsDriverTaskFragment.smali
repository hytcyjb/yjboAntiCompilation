.class public Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
.super Lcom/didi/beatles/business/order/BtsBaseFragment;
.source "BtsDriverTaskFragment.java"


# instance fields
.field private javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

.field private mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field private mLoadingLayout:Landroid/view/View;

.field private mNetErrorLayout:Landroid/view/View;

.field private mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

.field private mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

.field private reloadListener:Landroid/view/View$OnClickListener;

.field private webViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 89
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 191
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->reloadListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->webViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mNetErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    return-object v0
.end method

.method private addJsFunction()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "btnDriverOrderTask"

    new-instance v2, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;

    invoke-direct {v2, p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 339
    return-void
.end method

.method private bindUI(Landroid/view/View;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 181
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 182
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->webViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewCallBack(Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;)V

    .line 184
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;

    .line 185
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mNetErrorLayout:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mNetErrorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mUrl"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getWebViewCommonParams()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, strCommonParams:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    .end local v0           #strCommonParams:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p1

    .line 154
    .restart local v0       #strCommonParams:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 160
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 163
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 166
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 169
    .end local v0           #strCommonParams:Ljava/lang/String;
    :cond_6
    const-string v1, "token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "(token=[^&]*)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-static {v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->getInstance(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 75
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->setCommonWebView(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    .line 76
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    const-string v1, "DidiJSBridge"

    invoke-virtual {v0, p0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->addJavaScriptBridgerInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 79
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->registeJsFunctions()V

    .line 80
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 81
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->addJsFunction()V

    .line 82
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewModel(Lcom/didi/common/ui/webview/WebViewModel;)V

    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWebViewModel()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig$DriverTask;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;)Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
    .locals 3
    .parameter "index"
    .parameter "orderTaskListener"

    .prologue
    .line 50
    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    invoke-direct {v1}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;-><init>()V

    .line 51
    .local v1, fragment:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v1, p1}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->setOrderTaskListener(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;)V

    .line 55
    return-object v1
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    .line 307
    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v1, p1, v0, v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    return-object v0
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v1, p1, p2, v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    return-object v0
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"
    .parameter "o"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoRefresh()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->refresh()V

    .line 281
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->bindUI(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->initWebViewModel()V

    .line 66
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->initData()V

    .line 68
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->removeAllViews()V

    .line 273
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->destroy()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    .line 275
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 256
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->clearAnimation()V

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->onPause()V

    .line 261
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onResume()V

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->onResume()V

    .line 211
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onStop()V

    .line 266
    return-void
.end method

.method public setOrderTaskListener(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;)V
    .locals 0
    .parameter "mOrderTaskListener"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    .line 47
    return-void
.end method
