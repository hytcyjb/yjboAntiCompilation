.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;
.super Lcom/didi/common/base/BaseLayout;
.source "TaxiWaitForArrivalFoundWebView.java"

# interfaces
.implements Lcom/didi/common/ui/component/FlipperView$FlipperViewTouchableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
    }
.end annotation


# instance fields
.field private mHashLoadUrl:Z

.field private mIsLoading:Ljava/lang/Boolean;

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;

.field private mLoadingvView:Landroid/widget/ProgressBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805c2
    .end annotation
.end field

.field private mTouchable:Z

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebClient:Landroid/webkit/WebViewClient;

.field private mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805c1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;

    .line 44
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mTouchable:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mHashLoadUrl:Z

    .line 153
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebClient:Landroid/webkit/WebViewClient;

    .line 191
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 61
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;

    .line 44
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mTouchable:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mHashLoadUrl:Z

    .line 153
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebClient:Landroid/webkit/WebViewClient;

    .line 191
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 56
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;

    .line 44
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mTouchable:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mHashLoadUrl:Z

    .line 153
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebClient:Landroid/webkit/WebViewClient;

    .line 191
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 51
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mLoadingvView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;

    return-object v0
.end method

.method private init()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 88
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 90
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mTouchable:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public loadFoundUrl()V
    .locals 7

    .prologue
    const/16 v6, 0x12e

    const/4 v5, 0x1

    .line 100
    iget-boolean v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mHashLoadUrl:Z

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput-boolean v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mHashLoadUrl:Z

    .line 104
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 106
    .local v0, order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    const-string v1, ""

    .line 108
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getBizGameH5Url()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizGameH5Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5, v6}, Lcom/didi/game/common/utils/O2OUtils;->getTaxiBizParams(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v2, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizGameH5Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5, v6}, Lcom/didi/game/common/utils/O2OUtils;->getTaxiBizParams(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 117
    .end local v1           #url:Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5, v6}, Lcom/didi/game/common/utils/O2OUtils;->getTaxiBizParams(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 124
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 125
    .local v1, webViewMode:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/game/common/utils/O2OUtils;->getTaxiPayFinishedParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 128
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f030105

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 142
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;

    .line 136
    return-void
.end method

.method public setTouchableInFlipper(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mTouchable:Z

    .line 75
    return-void
.end method
