.class Lcom/didi/common/ui/webview/OldWebActivity$5;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JSBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/OldWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action_intent_braodcast_close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public hideEntrance()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    return-void
.end method

.method public invokeEntrance()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Lcom/didi/common/ui/webview/WebViewToolDialog;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewToolDialog;-><init>()V

    .line 473
    .local v0, webViewToolDialog:Lcom/didi/common/ui/webview/WebViewToolDialog;
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v3, v3, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/ui/webview/WebViewToolDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    goto :goto_0
.end method

.method public onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 4
    .parameter "webViewModel"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$5$4;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/webview/OldWebActivity$5$4;-><init>(Lcom/didi/common/ui/webview/OldWebActivity$5;Lcom/didi/common/ui/webview/WebViewModel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u5237\u65b0\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/OldWebActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->reload()V

    .line 437
    return-void
.end method

.method public selectPic(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "qualtity"

    .prologue
    .line 503
    return-void
.end method

.method public setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "entranceIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #setter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1302(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/util/List;)Ljava/util/List;

    .line 400
    const-string v0, "webactivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entranceIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/didi/common/ui/webview/OldWebActivity$5$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/OldWebActivity$5$1;-><init>(Lcom/didi/common/ui/webview/OldWebActivity$5;)V

    invoke-static {p2, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 419
    :cond_0
    return-void
.end method

.method public showEntrance()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->imgMenu:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$5$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/OldWebActivity$5$2;-><init>(Lcom/didi/common/ui/webview/OldWebActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_0
    return-void
.end method

.method public showShareDialogEntrance()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->btnShare:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->btnShare:Landroid/widget/Button;

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$5$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/OldWebActivity$5$3;-><init>(Lcom/didi/common/ui/webview/OldWebActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-void
.end method

.method public showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 424
    return-void
.end method

.method public webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/ui/webview/WebViewToolModel;->redirect_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 483
    return-void
.end method
