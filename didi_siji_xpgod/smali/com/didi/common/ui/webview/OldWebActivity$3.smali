.class Lcom/didi/common/ui/webview/OldWebActivity$3;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/OldWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/didi/common/ui/webview/OldWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, currClickTime:J
    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->goBack()V

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->mLastClickTime:J

    .line 280
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$3;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->reload()V

    goto :goto_0
.end method
