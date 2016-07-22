.class Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;
.super Lcom/didi/car/webview/InjectedChromeClient;
.source "CommonWebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/CommonWebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChromeClientEx"
.end annotation


# instance fields
.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field final synthetic this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/webview/CommonWebViewEx;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter "injectedName"
    .parameter "injectedCls"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 453
    invoke-direct {p0, p2, p3}, Lcom/didi/car/webview/InjectedChromeClient;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 454
    return-void
.end method

.method private showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "ctx"
    .parameter "title"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 511
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 512
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, p3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 515
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 516
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/car/webview/InjectedChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 483
    instance-of v0, p1, Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->handleJsInterface(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    invoke-static/range {v0 .. v5}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$500(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/didi/car/webview/InjectedChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 460
    const/16 v0, 0x19

    if-gt p2, v0, :cond_3

    .line 461
    iput-boolean v2, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mIsInjectedJS:Z

    .line 469
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/didi/car/webview/InjectedChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 471
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$300(Lcom/didi/common/ui/webview/CommonWebViewEx;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_2
    :goto_1
    return-void

    .line 462
    :cond_3
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mIsInjectedJS:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mJsCallJava:Lcom/didi/car/webview/JsCallJava;

    invoke-virtual {v0}, Lcom/didi/car/webview/JsCallJava;->getPreloadInterfaceJS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->mIsInjectedJS:Z

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged inject js interface completely on progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$400(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 523
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->changeTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method
