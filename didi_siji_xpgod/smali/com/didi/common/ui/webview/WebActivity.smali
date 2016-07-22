.class public Lcom/didi/common/ui/webview/WebActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "WebActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_BROADCAST_CLOSE:Ljava/lang/String; = "action_intent_braodcast_close"

.field public static final DATA_MODEL:Ljava/lang/String; = "data_model"

.field public static final REQUEST_CODE_CAPTURE_PIC:I = 0x3ee

.field public static final REQUEST_CODE_SELECT_PIC:I = 0x3ed

.field public static final TICKET_ID:Ljava/lang/String; = "dcq_id"

.field public static final TICKET_RESULT_SCHEMA:Ljava/lang/String; = "dcq:"

.field protected static javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;


# instance fields
.field private final TAG:Ljava/lang/String;

.field activityShare:Lcom/didi/common/model/ActivityShare;

.field private backListener:Landroid/view/View$OnClickListener;

.field protected btnBack:Landroid/widget/Button;

.field private btnClose:Landroid/view/View;

.field protected btnShare:Landroid/widget/Button;

.field private currentWebUrl:Ljava/lang/String;

.field private forwardCnt:I

.field private imgError:Landroid/widget/ImageView;

.field protected imgMenu:Landroid/widget/ImageView;

.field private isCanceled:Z

.field private itemPosition:Ljava/lang/String;

.field private itemTitle:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private mDataViewToolModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;

.field mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mShareView:Lcom/didi/taxi/ui/component/ShareView;

.field protected mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

.field private onClickListenerReload:Landroid/view/View$OnClickListener;

.field private startInitTime:J

.field private startInternalTime:J

.field private ticketId:Ljava/lang/String;

.field private titleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private txtError:Landroid/widget/TextView;

.field private txtTitle:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 75
    const-string v0, "webactivity"

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->viewError:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/didi/common/model/ActivityShare;

    invoke-direct {v0}, Lcom/didi/common/model/ActivityShare;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->titleMap:Ljava/util/HashMap;

    .line 91
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebActivity;->isCanceled:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    .line 102
    iput-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    .line 103
    iput-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    .line 104
    iput v1, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    .line 125
    new-instance v0, Lcom/didi/common/ui/webview/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/WebActivity$1;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/didi/common/ui/webview/WebActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/WebActivity$3;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    .line 733
    new-instance v0, Lcom/didi/common/ui/webview/WebActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/WebActivity$8;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/WebActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->currentWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/webview/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity;->currentWebUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/WebActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->titleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/webview/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/webview/WebActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/webview/WebActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/didi/common/ui/webview/WebActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity;->mDataViewToolModel:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->showShareDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/webview/WebActivity;)Lcom/didi/common/ui/webview/ImageHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/didi/common/ui/webview/WebActivity;Lcom/didi/common/ui/webview/ImageHelper;)Lcom/didi/common/ui/webview/ImageHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity;->mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->finishWithResult()V

    return-void
.end method

.method static synthetic access$302(Lcom/didi/common/ui/webview/WebActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/didi/common/ui/webview/WebActivity;->isCanceled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/WebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->goBack()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/webview/WebActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->setWebTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/webview/WebActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/webview/WebActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->imgError:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/ui/webview/WebActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/webview/WebActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "webView"
    .parameter "cmd"

    .prologue
    .line 377
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "webView"
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/didi/common/ui/webview/WebActivity;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "webView"
    .parameter "cmd"
    .parameter "params"
    .parameter "o"

    .prologue
    .line 389
    sget-object v0, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "webView"
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 385
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lcom/didi/car/webview/JsCallback;)Ljava/lang/String;
    .locals 12
    .parameter "webView"
    .parameter "cmd"
    .parameter "params"
    .parameter "jsCallback"

    .prologue
    const/4 v11, 0x0

    .line 413
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v5, v9

    .line 414
    .local v5, result:[Ljava/lang/String;
    sget-object v9, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v9, :cond_6

    .line 415
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getThirdDomain()[Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, stringsThirdDomain:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getRootDomain()[Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, stringsRootDomain:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v4, listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    .line 420
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_0

    .line 421
    aget-object v9, v8, v2

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v2           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 426
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_1

    .line 427
    aget-object v9, v7, v2

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    .end local v2           #i:I
    :cond_1
    const/4 v1, 0x0

    .line 433
    .local v1, flag:Z
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 434
    const/4 v1, 0x1

    .line 436
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 437
    .local v6, string:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 439
    :cond_4
    const/4 v1, 0x1

    .line 444
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v6           #string:Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    .line 469
    .end local v1           #flag:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #stringsRootDomain:[Ljava/lang/String;
    .end local v8           #stringsThirdDomain:[Ljava/lang/String;
    :cond_6
    :goto_2
    return-object v11

    .line 447
    .restart local v1       #flag:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #stringsRootDomain:[Ljava/lang/String;
    .restart local v8       #stringsThirdDomain:[Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/didi/common/ui/webview/WebActivity$5;

    invoke-direct {v9, p2, v5, p1, p3}, Lcom/didi/common/ui/webview/WebActivity$5;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/webview/JsCallback;)V

    invoke-static {v9}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public static callHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 397
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/didi/common/ui/webview/WebActivity;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"
    .parameter "o"

    .prologue
    .line 405
    sget-object v0, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private exitEntryTraceLog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 901
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    const-string v0, "pxxmenu03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const-string v0, "pexwfp03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private filterUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView filterUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 346
    const-string v1, "dcq:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const-string v1, "dcq_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
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

    iput-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->finishWithResult()V

    .line 355
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView filterUrl ticketId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 366
    :goto_1
    return v0

    .line 352
    :cond_0
    iput-boolean v0, p0, Lcom/didi/common/ui/webview/WebActivity;->isCanceled:Z

    .line 353
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->goBack()V

    goto :goto_0

    .line 357
    :cond_1
    const-string v1, "WebView filterUrl finish:"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    goto :goto_1

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView filterUrl loadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private finishWithResult()V
    .locals 3

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "taxi_ticket"

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->ticketId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/ui/webview/WebActivity;->setResult(ILandroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 374
    return-void
.end method

.method private goBack()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->hideEntrance()V

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------webview goback--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->gobackTraceLog()V

    .line 300
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->viewError:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->goBack()V

    .line 306
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->setWebTitle(Ljava/lang/String;)V

    .line 309
    :cond_3
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->setTitleBarRightCloseTxt()V

    .line 310
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->setWebTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_4
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/WebActivity;->isCanceled:Z

    if-eqz v0, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->finishWithResult()V

    goto :goto_0

    .line 318
    :cond_5
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    goto :goto_0
.end method

.method private gobackTraceLog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 919
    iget v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------webview-gobackTraceLog: title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwordcnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 921
    iget v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    if-gtz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    const-string v0, "pxxmenu04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    const-string v0, "pexwfp04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 938
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 477
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->getInstance(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v2

    sput-object v2, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 478
    sget-object v2, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/JavascriptBridge;->setCommonWebView(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    .line 480
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    const-string v3, "DidiJSBridge"

    invoke-virtual {v2, p0, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->addJavaScriptBridgerInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    sget-object v2, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->registeJsFunctions()V

    .line 482
    new-instance v2, Lcom/didi/common/ui/webview/WebActivity$6;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/WebActivity$6;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    iput-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 604
    sget-object v2, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/JavascriptBridge;->setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 606
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_model"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_model"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/WebViewModel;

    iput-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 608
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewModel(Lcom/didi/common/ui/webview/WebViewModel;)V

    .line 611
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->currentWebUrl:Ljava/lang/String;

    .line 613
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 655
    :goto_0
    return-void

    .line 618
    :cond_1
    const-string v2, ""

    const-string v3, "\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v2, v3}, Lcom/didi/common/ui/webview/WebActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 621
    .local v0, mUrl:Ljava/lang/String;
    const-string v2, "webactivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source Url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isPostBaseParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  customparams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    if-eqz v2, :cond_8

    .line 626
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->mDisableParamsKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getWebViewCommonParams(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, strCommonParams:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    :cond_2
    :goto_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .end local v1           #strCommonParams:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->initEntryTraceLog()V

    .line 653
    const-string v2, "webactivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    .restart local v1       #strCommonParams:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 637
    :cond_5
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 638
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 641
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 644
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 648
    .end local v1           #strCommonParams:Ljava/lang/String;
    :cond_8
    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    if-nez v2, :cond_3

    .line 649
    const-string v2, "(token=[^&]*)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private initEntryTraceLog()V
    .locals 4

    .prologue
    .line 850
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    .line 852
    const-string v0, "pxxmenu03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 864
    return-void

    .line 853
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    .line 855
    const-string v0, "pexwfp03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    .line 858
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 859
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    .line 861
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 136
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 137
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnBack:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnClose:Landroid/view/View;

    .line 141
    const v0, 0x7f08030c

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->imgMenu:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f08030b

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnShare:Landroid/widget/Button;

    .line 145
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->viewError:Landroid/view/View;

    .line 146
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->imgError:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->txtError:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$2;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewCallBack(Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;)V

    .line 270
    return-void
.end method

.method private internalEntryTraceLog()V
    .locals 4

    .prologue
    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwardCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwardCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    if-gtz v0, :cond_1

    .line 874
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    .line 876
    const-string v0, "pxxmenu04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    :goto_0
    iget v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------webview-gobackTraceLog: title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwordcnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 894
    const-string v0, "pxxwfp01_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_1
    return-void

    .line 878
    :cond_2
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    .line 880
    const-string v0, "pexwfp04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 882
    :cond_3
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    .line 884
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :cond_4
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    .line 888
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/WebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setTitleBarRightCloseTxt()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnClose:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnClose:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$4;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->btnClose:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWebTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 659
    :try_start_0
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 661
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 662
    .local v0, isNum:Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOT FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    .end local v0           #isNum:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :goto_0
    return-void

    .line 665
    .restart local v0       #isNum:Ljava/util/regex/Matcher;
    .restart local v1       #pattern:Ljava/util/regex/Pattern;
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    .end local v0           #isNum:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/webview/WebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 6

    .prologue
    .line 675
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 676
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 677
    .local v1, win:Landroid/view/Window;
    new-instance v3, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    .line 678
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 679
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/common/model/ActivityShare;)V

    .line 680
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 681
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 682
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 683
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 684
    .local v2, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView showShareDialog : --- title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->titleWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->contentWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->picWXUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " picurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->picWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " localimg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget v4, v4, Lcom/didi/common/model/ActivityShare;->localImg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isloadimig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-boolean v4, v4, Lcom/didi/common/model/ActivityShare;->isLoadNetImg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    new-instance v4, Lcom/didi/common/ui/webview/WebActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/didi/common/ui/webview/WebActivity$7;-><init>(Lcom/didi/common/ui/webview/WebActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 695
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 696
    return-void
.end method


# virtual methods
.method protected cancelProgressDialog()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 786
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 764
    const-string v0, "--------------------------webview finish--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 765
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/webview/WebActivity;->overridePendingTransition(II)V

    .line 766
    return-void
.end method

.method public getCustomParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;
    .locals 1

    .prologue
    .line 754
    sget-object v0, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    return-object v0
.end method

.method public getmCommonWebView()Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mImageHelper:Lcom/didi/common/ui/webview/ImageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/ImageHelper;->handleActivityResult(IILandroid/content/Intent;)V

    .line 951
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/common/ui/webview/WebActivity;->overridePendingTransition(II)V

    .line 116
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/webview/WebActivity;->setContentView(I)V

    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->initViews()V

    .line 118
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->initData()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_intent_braodcast_close"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/ui/webview/WebActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 721
    const-string v0, "--------------------------webview ondstroy--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 722
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 723
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 724
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->removeAllViews()V

    .line 725
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->destroy()V

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/webview/WebActivity;->forwardCnt:I

    .line 727
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->exitEntryTraceLog()V

    .line 728
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->gobackTraceLog()V

    .line 730
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/WebActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 731
    return-void
.end method

.method protected onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 701
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onPause()V

    .line 702
    const-string v0, "--------------------------webview onpause--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->clearAnimation()V

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->onPause()V

    .line 707
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 712
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 713
    const-string v0, "--------------------------webview onresume--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->onResume()V

    .line 717
    :cond_0
    return-void
.end method

.method protected parseInnerUrl(Ljava/lang/String;)V
    .locals 10
    .parameter "url"

    .prologue
    const/16 v9, 0x26

    const/4 v8, 0x0

    .line 820
    const-string v3, "cellname="

    .line 821
    .local v3, cellnameKey:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 822
    .local v4, cellnameKeyLen:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, name:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 824
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 827
    :cond_0
    const-string v1, "cellid="

    .line 828
    .local v1, cellidKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 830
    .local v2, cellidKeyLen:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, cell:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 832
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_1
    invoke-static {v6}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 836
    :try_start_0
    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 841
    :cond_2
    :goto_0
    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 847
    :cond_3
    :goto_1
    return-void

    .line 837
    :catch_0
    move-exception v5

    .line 838
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 844
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    const-string v7, "pexwsc05_sw"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[cellname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "][cell="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------webview-pexwsc05_sw url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cell:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parseUrl(Ljava/lang/String;)V
    .locals 10
    .parameter "url"

    .prologue
    const/16 v9, 0x26

    const/4 v8, 0x0

    .line 789
    const-string v4, "title="

    .line 790
    .local v4, titleKey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 791
    .local v5, titleKeyLen:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, title:Ljava/lang/String;
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 793
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 796
    :cond_0
    const-string v2, "position="

    .line 797
    .local v2, positionKey:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 798
    .local v1, posKeyLen:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    .line 799
    iget-object v6, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 800
    iget-object v6, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    iget-object v7, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    .line 802
    :cond_1
    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 804
    :try_start_0
    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 809
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 816
    :cond_3
    :goto_1
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 812
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    iput-object v3, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    .line 813
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;->internalEntryTraceLog()V

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------webview-find url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/common/ui/webview/WebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/common/ui/webview/WebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setJavascriptBridge(Lcom/didi/common/ui/webview/JavascriptBridge;)V
    .locals 0
    .parameter "javascriptBridge"

    .prologue
    .line 758
    sput-object p1, Lcom/didi/common/ui/webview/WebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 759
    return-void
.end method

.method public setmCommonWebView(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 0
    .parameter "mCommonWebView"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 747
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 771
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 772
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 773
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/didi/common/ui/webview/WebActivity$9;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebActivity$9;-><init>(Lcom/didi/common/ui/webview/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 779
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 780
    return-void
.end method
