.class Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;
.super Ljava/lang/Object;
.source "CarEstimatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarEstimatePriceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 335
    .local v0, currClickTime:J
    iget-wide v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 341
    :goto_0
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iput-wide v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->mLastClickTime:J

    .line 346
    :cond_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    goto :goto_0
.end method
