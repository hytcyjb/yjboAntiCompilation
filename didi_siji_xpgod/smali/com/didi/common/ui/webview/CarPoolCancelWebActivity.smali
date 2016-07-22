.class public Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "CarPoolCancelWebActivity.java"


# instance fields
.field private mTaxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redirectConfirmFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redictTaxiRealtimeFragment()V

    return-void
.end method

.method private redictTaxiRealtimeFragment()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 90
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 91
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->stopAllLooper()V

    .line 92
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 93
    const-string v0, "LoopStop4"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 96
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->finish()V

    .line 97
    return-void
.end method

.method private redirectConfirmFragment()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 102
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->confirm()V

    .line 103
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 42
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->mTaxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 44
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->unRegisterListenr()V

    .line 45
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    const-string v1, "afterCancelOrderCallback"

    new-instance v2, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;-><init>(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->btnBack:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->imgMenu:Landroid/widget/ImageView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->imgMenu:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->imgMenu:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$2;-><init>(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/webview/WebActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
