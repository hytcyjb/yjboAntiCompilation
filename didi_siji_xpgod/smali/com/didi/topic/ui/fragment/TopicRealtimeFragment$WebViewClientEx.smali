.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;
.super Landroid/webkit/WebViewClient;
.source "TopicRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method private constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 175
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$100(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    .local v0, drawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 177
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$100(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$100(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$100(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 168
    .local v0, drawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 169
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0b058e

    const v2, 0x7f0201dc

    .line 189
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const/16 v0, -0xe

    if-ne p2, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$500(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 215
    return-void

    .line 196
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x6

    if-eq p2, v0, :cond_1

    const/4 v0, -0x5

    if-ne p2, v0, :cond_2

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$500(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$700(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 202
    :cond_2
    const/4 v0, -0x8

    if-ne p2, v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$500(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$500(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$700(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->gotoHtml(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method
