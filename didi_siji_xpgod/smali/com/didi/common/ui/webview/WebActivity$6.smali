.class Lcom/didi/common/ui/webview/WebActivity$6;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JSBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/WebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action_intent_braodcast_close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/webview/WebActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public hideEntrance()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity;->imgMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    return-void
.end method

.method public invokeEntrance()V
    .locals 4

    .prologue
    .line 560
    new-instance v0, Lcom/didi/common/ui/webview/WebViewToolDialog;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewToolDialog;-><init>()V

    .line 561
    .local v0, webViewToolDialog:Lcom/didi/common/ui/webview/WebViewToolDialog;
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebActivity;->access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebActivity;->access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v2}, Lcom/didi/common/ui/webview/WebActivity;->access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/ui/webview/WebViewToolDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    goto :goto_0
.end method

.method public onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 4
    .parameter "webViewModel"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->startActivity(Landroid/content/Intent;)V

    .line 576
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$6$4;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/webview/WebActivity$6$4;-><init>(Lcom/didi/common/ui/webview/WebActivity$6;Lcom/didi/common/ui/webview/WebViewModel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 586
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u5237\u65b0\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/WebActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    .line 525
    return-void
.end method

.method public selectPic(III)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "qualtity"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    new-instance v1, Lcom/didi/common/ui/webview/ImageHelper;

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v1, v2}, Lcom/didi/common/ui/webview/ImageHelper;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/didi/common/ui/webview/WebActivity;->mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;
    invoke-static {v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->access$1502(Lcom/didi/common/ui/webview/WebActivity;Lcom/didi/common/ui/webview/ImageHelper;)Lcom/didi/common/ui/webview/ImageHelper;

    .line 591
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1500(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/ImageHelper;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$6$5;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$6$5;-><init>(Lcom/didi/common/ui/webview/WebActivity$6;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/didi/common/ui/webview/ImageHelper;->handleImageChoose(IIILcom/didi/common/ui/webview/IImg2StrListener;)V

    .line 602
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
    .line 486
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #setter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/didi/common/ui/webview/WebActivity;->access$1302(Lcom/didi/common/ui/webview/WebActivity;Ljava/util/List;)Ljava/util/List;

    .line 487
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

    .line 488
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Lcom/didi/common/ui/webview/WebActivity$6$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/WebActivity$6$1;-><init>(Lcom/didi/common/ui/webview/WebActivity$6;)V

    invoke-static {p2, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 507
    :cond_0
    return-void
.end method

.method public showEntrance()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity;->imgMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity;->imgMenu:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$6$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$6$2;-><init>(Lcom/didi/common/ui/webview/WebActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    :cond_0
    return-void
.end method

.method public showShareDialogEntrance()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity;->btnShare:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebActivity;->btnShare:Landroid/widget/Button;

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$6$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$6$3;-><init>(Lcom/didi/common/ui/webview/WebActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    return-void
.end method

.method public showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 512
    return-void
.end method

.method public webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/webview/WebActivity;->access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/ui/webview/WebViewToolModel;->redirect_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 571
    return-void
.end method
