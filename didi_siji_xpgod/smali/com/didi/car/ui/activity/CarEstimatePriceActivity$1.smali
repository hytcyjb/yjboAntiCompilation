.class Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CarEstimatePriceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$000(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$000(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 276
    .local v0, drawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 277
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 278
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 266
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$000(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$000(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 268
    .local v0, drawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 269
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

    .line 295
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const/16 v0, -0xe

    if-ne p2, v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$300(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    const/4 v0, -0x6

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-ne p2, v0, :cond_3

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$300(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$500(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 311
    :cond_3
    const/4 v0, -0x8

    if-ne p2, v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$300(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$300(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$500(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 282
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 283
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 284
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 285
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 286
    iput-object p2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startActivity(Landroid/content/Intent;)V

    .line 290
    return v4
.end method
