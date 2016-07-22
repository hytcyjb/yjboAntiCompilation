.class Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;
.super Landroid/webkit/WebViewClient;
.source "CommonMyAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonMyAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->access$000(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 84
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->access$100(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->access$100(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->showError()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->access$200(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V

    .line 103
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 90
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v1, viewIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    invoke-virtual {v2, v1}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #viewIntent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
