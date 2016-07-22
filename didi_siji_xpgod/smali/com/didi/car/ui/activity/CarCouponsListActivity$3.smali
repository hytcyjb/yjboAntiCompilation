.class Lcom/didi/car/ui/activity/CarCouponsListActivity$3;
.super Landroid/webkit/WebViewClient;
.source "CarCouponsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCouponsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 227
    sget-object v0, Lcom/didi/common/util/Constant;->MY_TICKET_RULES_WEB_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$400(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 229
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$400(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$300(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 232
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 233
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #calls: Lcom/didi/car/ui/activity/CarCouponsListActivity;->showError()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$600(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 236
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .local v1, viewIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #viewIntent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #calls: Lcom/didi/car/ui/activity/CarCouponsListActivity;->filterUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v2, p1, p2}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$500(Lcom/didi/car/ui/activity/CarCouponsListActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
