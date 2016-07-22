.class Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;
.super Landroid/webkit/WebChromeClient;
.source "OldCommonWebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/OldCommonWebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChromeClientEx"
.end annotation


# instance fields
.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field final synthetic this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Lcom/didi/common/ui/webview/OldCommonWebViewEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;-><init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)V

    return-void
.end method

.method private showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "ctx"
    .parameter "title"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 491
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 492
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, p3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 495
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 496
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
    .line 475
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

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
    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

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
    .line 463
    instance-of v0, p1, Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    #calls: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->handleJsInterface(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    invoke-static/range {v0 .. v5}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Landroid/webkit/WebView;)V

    .line 449
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 451
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$300(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$400(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$300(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$300(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$500(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Landroid/webkit/WebView;)V

    .line 503
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$700(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;->this$0:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->access$700(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;->changeTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method
