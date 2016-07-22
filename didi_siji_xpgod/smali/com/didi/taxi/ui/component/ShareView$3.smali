.class Lcom/didi/taxi/ui/component/ShareView$3;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView;->shareSinaWeibo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/ShareView;

.field final synthetic val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView;Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$3;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 488
    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$3$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$3$1;-><init>(Lcom/didi/taxi/ui/component/ShareView$3;)V

    invoke-static {v2}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 494
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 495
    .local v0, content:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    #getter for: Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;
    invoke-static {v2}, Lcom/didi/taxi/ui/component/ShareView;->access$000(Lcom/didi/taxi/ui/component/ShareView;)Lcom/didi/frame/dialog/ShareEditDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/dialog/ShareEditDialog;->getEditContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    #getter for: Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/taxi/ui/component/ShareView;->access$100(Lcom/didi/taxi/ui/component/ShareView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 498
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 499
    .local v1, onekeyShare:Lcn/sharesdk/onekeyshare/OnekeyShare;
    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$3$2;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$3$2;-><init>(Lcom/didi/taxi/ui/component/ShareView$3;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 531
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    iget-object v2, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 533
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    iget-object v2, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    iget-object v2, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 536
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView$3;->val$modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    .line 537
    return-void
.end method
