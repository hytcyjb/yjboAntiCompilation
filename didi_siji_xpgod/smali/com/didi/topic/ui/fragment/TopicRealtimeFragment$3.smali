.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    .local v0, currClickTime:J
    iget-wide v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iput-wide v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->mLastClickTime:J

    .line 270
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->reload()V

    goto :goto_0
.end method
