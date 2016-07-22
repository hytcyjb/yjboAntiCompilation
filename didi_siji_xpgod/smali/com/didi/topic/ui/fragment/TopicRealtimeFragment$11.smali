.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JSBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->initData(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

.field final synthetic val$mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    iput-object p2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;->val$mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public hideEntrance()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public invokeEntrance()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 0
    .parameter "webViewModel"

    .prologue
    .line 573
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;->val$mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    .line 548
    return-void
.end method

.method public selectPic(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "qualtity"

    .prologue
    .line 578
    return-void
.end method

.method public setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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
    .line 534
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    return-void
.end method

.method public showEntrance()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public showShareDialogEntrance()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 539
    return-void
.end method

.method public webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;->val$mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p1, Lcom/didi/common/ui/webview/WebViewToolModel;->redirect_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 569
    return-void
.end method
