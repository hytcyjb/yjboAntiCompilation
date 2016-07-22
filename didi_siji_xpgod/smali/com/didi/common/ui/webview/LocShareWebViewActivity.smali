.class public Lcom/didi/common/ui/webview/LocShareWebViewActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "LocShareWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method private getLocalData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityShare;->contentWX:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityShare;->titleWX:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityShare;->picWX:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityShare;->picWXUrl:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->shareIconLocal:I

    iput v1, v0, Lcom/didi/common/model/ActivityShare;->localImg:I

    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iput-boolean v2, v0, Lcom/didi/common/model/ActivityShare;->isShowSina:Z

    .line 37
    sget-object v0, Lcom/didi/common/util/Constant;->HUAWEI_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->COOLPAD_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->YINGYONGBAO_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->MEIZU_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->ANZHI_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->SAMSUNG_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->TIANYU_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->TUXING_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->WANDOUJIA_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->TXSHOUJIGUANJIA_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->SMARTISAN_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->LENOVO_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->BAIDU_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->HONGBAO_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->SAMSUNGS6_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->JINLIYIYONGHUI_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iput-boolean v2, v0, Lcom/didi/common/model/ActivityShare;->isLoadNetImg:Z

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView onCreate param : --- title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    invoke-virtual {v1}, Lcom/didi/common/model/ActivityShare;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object v0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->unRegisterListenr()V

    .line 22
    sget-object v0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 23
    iget-object v0, p0, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareDialogEntrance()V

    .line 25
    invoke-direct {p0}, Lcom/didi/common/ui/webview/LocShareWebViewActivity;->getLocalData()V

    .line 27
    return-void
.end method
