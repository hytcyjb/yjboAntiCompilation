.class Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;
.super Ljava/lang/Object;
.source "BtsDriverTaskFragment.java"

# interfaces
.implements Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "title"

    .prologue
    .line 243
    return-void
.end method

.method public onGoBack()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$000(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 239
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$100(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 217
    return-void
.end method
