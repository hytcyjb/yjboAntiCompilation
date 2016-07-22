.class Lcom/didi/common/ui/webview/WebActivity$3;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/didi/common/ui/webview/WebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$3;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity$3;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 280
    .local v0, currClickTime:J
    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity$3;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$3;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/WebActivity;->access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$3;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/WebActivity;->access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 286
    :goto_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$3;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->viewError:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/common/ui/webview/WebActivity;->access$600(Lcom/didi/common/ui/webview/WebActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity$3;->mLastClickTime:J

    .line 290
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity$3;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    #getter for: Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/WebActivity;->access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    goto :goto_0
.end method
