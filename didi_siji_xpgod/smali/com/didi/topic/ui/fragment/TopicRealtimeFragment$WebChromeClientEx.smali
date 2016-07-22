.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;
.super Lcom/didi/car/webview/InjectedChromeClient;
.source "TopicRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChromeClientEx"
.end annotation


# instance fields
.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method public constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter "injectedName"
    .parameter "injectedCls"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    .line 587
    invoke-direct {p0, p2, p3}, Lcom/didi/car/webview/InjectedChromeClient;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 588
    return-void
.end method

.method private showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "ctx"
    .parameter "title"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 647
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 648
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, p3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 651
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 652
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
    .line 615
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

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
    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/car/webview/InjectedChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 609
    invoke-super/range {p0 .. p5}, Lcom/didi/car/webview/InjectedChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 594
    const/16 v0, 0x19

    if-gt p2, v0, :cond_1

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mIsInjectedJS:Z

    .line 603
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/didi/car/webview/InjectedChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 605
    return-void

    .line 596
    :cond_1
    iget-boolean v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mIsInjectedJS:Z

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mJsCallJava:Lcom/didi/car/webview/JsCallJava;

    invoke-virtual {v0}, Lcom/didi/car/webview/JsCallJava;->getPreloadInterfaceJS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->mIsInjectedJS:Z

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged inject js interface completely on progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "title"

    .prologue
    .line 657
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #setter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1102(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 626
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    .line 627
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter "uploadMsg"
    .parameter "acceptType"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #setter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1102(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 632
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    .line 633
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .parameter "capture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #setter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1102(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 638
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    .line 639
    return-void
.end method
