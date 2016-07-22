.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;
.super Landroid/webkit/WebViewClient;
.source "TaxiWaitForArrivalFoundWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$102(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 163
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mLoadingvView:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->invisible(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mIsLoading:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$102(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mLoadingvView:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->show(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 187
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaxiWaitArrivalFoundWebView shouldOverrideUrlLoading:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 168
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v1, viewIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #viewIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
    invoke-static {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wvjbscheme://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
    invoke-static {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;->onFoundItemClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
