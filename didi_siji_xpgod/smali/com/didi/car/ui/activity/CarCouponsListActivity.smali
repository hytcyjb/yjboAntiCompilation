.class public Lcom/didi/car/ui/activity/CarCouponsListActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CarCouponsListActivity.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/activity/CarCouponsListActivity$JsObject;
    }
.end annotation


# static fields
.field public static final DISPLAY_TYPE:Ljava/lang/String; = "display_type"

.field public static final FROM_MENU:I = 0x1

.field public static final TICKET_AMOUNT:Ljava/lang/String; = "amount"

.field public static final TICKET_ID:Ljava/lang/String; = "dcq_id"

.field public static final TICKET_NAME:Ljava/lang/String; = "name"

.field public static final TICKET_RESULT_SCHEMA:Ljava/lang/String; = "dcq://udache"

.field public static final WEB_VIEW_TITLE:Ljava/lang/String; = "web_view_titile"

.field public static final WEB_VIEW_URL:Ljava/lang/String; = "web_view_url"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private errorView:Landroid/view/View;

.field private from:I

.field private isCanceled:Z

.field private mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

.field private mPopWin:Landroid/widget/PopupWindow;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private rightListener:Landroid/view/View$OnClickListener;

.field private shareInfo:Lcom/didi/car/model/CarShareCouponInfo;

.field private title:I

.field private webUrl:Ljava/lang/String;

.field private webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 58
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webUrl:Ljava/lang/String;

    .line 59
    const v0, 0x7f0b0334

    iput v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->title:I

    .line 77
    iput-boolean v1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->isCanceled:Z

    .line 152
    new-instance v0, Lcom/didi/car/ui/activity/CarCouponsListActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity$1;-><init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity$2;-><init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->rightListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity$3;-><init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webViewClient:Landroid/webkit/WebViewClient;

    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->back()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/ui/activity/CarCouponsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->from:I

    return v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->showShareView()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/activity/CarCouponsListActivity;)Lcom/didi/frame/titlebar/TitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/car/ui/activity/CarCouponsListActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->filterUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->showError()V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 204
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->getTitleString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setTitleBarRightTxt()V

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->isCanceled:Z

    if-eqz v0, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->finishWithResult()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->finish()V

    goto :goto_0
.end method

.method private filterUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 266
    const-string v4, "dcq://udache"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    const-string v4, "dcq_id"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    const-string v4, "dcq_id"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "dcq_id"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const-string v5, "name"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, ticketId:Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const-string v5, "amount"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, ticketName:Ljava/lang/String;
    const-string v4, "amount"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "amount"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, ticketAmount:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v4}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    iput-object v4, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 276
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iput-object v2, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 279
    :try_start_0
    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iput-object v1, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->finishWithResult()V

    .line 296
    .end local v1           #ticketAmount:Ljava/lang/String;
    .end local v2           #ticketId:Ljava/lang/String;
    .end local v3           #ticketName:Ljava/lang/String;
    :goto_1
    return-void

    .line 282
    .restart local v1       #ticketAmount:Ljava/lang/String;
    .restart local v2       #ticketId:Ljava/lang/String;
    .restart local v3       #ticketName:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v5, ""

    iput-object v5, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ticketAmount:Ljava/lang/String;
    .end local v2           #ticketId:Ljava/lang/String;
    .end local v3           #ticketName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->finish()V

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishWithResult()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "car_ticket"

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->finish()V

    .line 303
    return-void
.end method

.method private getIntentFromData()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "web_view_titile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->title:I

    .line 103
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "web_view_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webUrl:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "display_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->from:I

    .line 105
    iget v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->from:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_car_pink_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarShareCouponInfo;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->shareInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 109
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 96
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 97
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->errorView:Landroid/view/View;

    .line 98
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    iget v1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->title:I

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 135
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setTitleBarRightTxt()V

    .line 138
    :cond_0
    return-void
.end method

.method private setTitleBarRightTxt()V
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->from:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b01a8

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->title:I

    const v1, 0x7f0b040b

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b040a

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    goto :goto_0
.end method

.method private setWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    const v0, 0x7f0b0308

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 119
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 120
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 121
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 123
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 124
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 125
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 126
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 127
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 129
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private showError()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->errorView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 256
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 257
    return-void
.end method

.method private showShareView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 182
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->shareInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    new-instance v1, Lcom/didi/taxi/ui/component/ShareView;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, rv:Lcom/didi/taxi/ui/component/ShareView;
    const v2, 0x7f07002c

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 187
    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 188
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->shareInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/car/model/CarShareCouponInfo;)V

    .line 189
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 191
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v3, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 192
    .local v0, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 193
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 194
    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mPopWin:Landroid/widget/PopupWindow;

    goto :goto_0
.end method


# virtual methods
.method public closePopWin()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->mPopWin:Landroid/widget/PopupWindow;

    .line 319
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 221
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->closePopWin()V

    .line 222
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->overridePendingTransition(II)V

    .line 223
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->back()V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->overridePendingTransition(II)V

    .line 86
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->initViews()V

    .line 88
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->getIntentFromData()V

    .line 89
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setTitleBar()V

    .line 90
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->setWebView()V

    .line 91
    const-string v0, "wanliu_price_rule_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 308
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->closePopWin()V

    .line 309
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 310
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->removeAllViews()V

    .line 311
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->destroy()V

    .line 312
    return-void
.end method

.method public onShareClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->closePopWin()V

    .line 324
    return-void
.end method
