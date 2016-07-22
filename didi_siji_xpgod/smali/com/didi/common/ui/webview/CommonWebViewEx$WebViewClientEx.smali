.class Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;
.super Landroid/webkit/WebViewClient;
.source "CommonWebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/CommonWebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/ui/webview/CommonWebViewEx;Lcom/didi/common/ui/webview/CommonWebViewEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;-><init>(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 541
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 534
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 555
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 558
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$200(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 562
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #calls: Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V

    .line 546
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 547
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 550
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    const-string v1, "file:///android_asset/connect_error.html"

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 565
    const-string v4, ".apk"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 567
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    .local v2, viewIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$700(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 594
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #viewIntent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 570
    :cond_0
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 574
    iget-object v4, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v4}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 576
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "weixin:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 578
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 579
    .restart local v1       #uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 580
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$700(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 589
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 590
    iget-object v3, p0, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;->this$0:Lcom/didi/common/ui/webview/CommonWebViewEx;

    #getter for: Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    invoke-static {v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 594
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
