.class Lcom/didi/common/ui/webview/OldWebActivity$2;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/OldWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b058e

    const v4, 0x7f0201dc

    const/4 v3, 0x0

    .line 178
    const-string v0, "webactivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showerror    errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  failingurl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "found"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "wa_discover_content_click_req_error"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const/16 v0, -0xe

    if-ne p2, v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$700(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x6

    if-eq p2, v0, :cond_3

    const/4 v0, -0x5

    if-ne p2, v0, :cond_4

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$700(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$900(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 198
    :cond_4
    const/4 v0, -0x8

    if-ne p2, v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$700(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b058d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$700(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$900(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public changeTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "title"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$000(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, mLastUrl:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->titleMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1000(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1100(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void
.end method

.method public onGoBack()V
    .locals 1

    .prologue
    .line 215
    const-string v0, "--------------------------webview ongoback--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->goBack()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$400(Lcom/didi/common/ui/webview/OldWebActivity;)V

    .line 217
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->cancelProgressDialog()V

    .line 243
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-interface {v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->hideEntrance()V

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------------webview onpagestarted--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->titleMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1000(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v2, v2, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->cancelProgressDialog()V

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/common/ui/webview/OldWebActivity$2;->showError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #setter for: Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->access$002(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------------loading url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------webview urlloading --------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    const-string v0, "dcq:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "dcq_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    const-string v1, "dcq_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "dcq_id"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$102(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$100(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->finishWithResult()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$200(Lcom/didi/common/ui/webview/OldWebActivity;)V

    .line 156
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView filterUrl ticketId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$100(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 175
    :goto_1
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/webview/OldWebActivity;->isCanceled:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->access$302(Lcom/didi/common/ui/webview/OldWebActivity;Z)Z

    .line 154
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->goBack()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$400(Lcom/didi/common/ui/webview/OldWebActivity;)V

    goto :goto_0

    .line 158
    :cond_1
    const-string v0, "WebView filterUrl finish:"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    goto :goto_1

    .line 163
    :cond_2
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->parseUrl(Ljava/lang/String;)V

    .line 172
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->parseInnerUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_4
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->parseUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_5
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->parseUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_6
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$2;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/webview/OldWebActivity;->parseUrl(Ljava/lang/String;)V

    goto :goto_2
.end method
