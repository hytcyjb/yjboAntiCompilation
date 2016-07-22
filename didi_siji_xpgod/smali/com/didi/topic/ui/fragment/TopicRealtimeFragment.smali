.class public Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TopicRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;,
        Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;
    }
.end annotation


# static fields
.field private static final SEARCH_WAIT_SECOND:I = 0x3

.field public static javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;


# instance fields
.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private imgError:Landroid/widget/ImageView;

.field private listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private loading:Landroid/widget/ImageView;

.field private mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

.field private mAvatarOriginFile:Ljava/io/File;

.field private mCallBack:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/frame/realtime/RealTimeCallView;

.field private onClickListenerReload:Landroid/view/View$OnClickListener;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private toSearchClickTime:J

.field private txtError:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;

.field private webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private wrap:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->toSearchClickTime:J

    .line 251
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$3;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->onClickListenerReload:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$6;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 428
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$7;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 457
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$9;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 491
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 812
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$12;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->setLocationView()V

    return-void
.end method

.method static synthetic access$1102(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->gotoHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->onClickListenerReload:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$802(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$900(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private addCityListener()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 394
    return-void
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "webView"
    .parameter "cmd"

    .prologue
    .line 274
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "webView"
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 286
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
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
    .line 282
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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

    .line 311
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v5, v9

    .line 312
    .local v5, result:[Ljava/lang/String;
    sget-object v9, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v9, :cond_6

    .line 313
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getThirdDomain()[Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, stringsThirdDomain:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getRootDomain()[Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, stringsRootDomain:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    .line 318
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_0

    .line 319
    aget-object v9, v8, v2

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v2           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 324
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_1

    .line 325
    aget-object v9, v7, v2

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    .end local v2           #i:I
    :cond_1
    const/4 v1, 0x0

    .line 331
    .local v1, flag:Z
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 332
    const/4 v1, 0x1

    .line 334
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

    .line 335
    .local v6, string:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 337
    :cond_4
    const/4 v1, 0x1

    .line 342
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v6           #string:Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    .line 367
    .end local v1           #flag:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #stringsRootDomain:[Ljava/lang/String;
    .end local v8           #stringsThirdDomain:[Ljava/lang/String;
    :cond_6
    :goto_2
    return-object v11

    .line 345
    .restart local v1       #flag:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #stringsRootDomain:[Ljava/lang/String;
    .restart local v8       #stringsThirdDomain:[Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;

    invoke-direct {v9, p2, v5, p1, p3}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/webview/JsCallback;)V

    invoke-static {v9}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public static callHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 294
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"
    .parameter "o"

    .prologue
    .line 302
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/common/ui/webview/JavascriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIMUnread()V
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$5;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_0
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mUrl"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getWebViewCommonParams()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, strCommonParams:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    :goto_0
    return-object p1

    .line 119
    :cond_0
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 120
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private editAvatar()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f060001

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/userinfo/BottomListMenu;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    .line 222
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    new-instance v1, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/BottomListMenu;->setListMenuListener(Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;)V

    .line 239
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    new-instance v1, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$2;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/BottomListMenu;->setDismissListener(Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->showDialog()V

    .line 247
    return-void
.end method

.method private gotoHtml(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 772
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    .line 786
    :goto_0
    return-void

    .line 777
    :cond_0
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 778
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 779
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 780
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 781
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 782
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initCover()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    const v1, 0x7f0804e9

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 133
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    const v1, 0x7f0804e8

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    .line 134
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 136
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 138
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-direct {p0, v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->initData(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    .line 140
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->viewError:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->imgError:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->txtError:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    const v1, 0x7f080212

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->loading:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v1, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;

    const-string v2, "DidiJSBridge"

    const-class v3, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {v1, p0, v2, v3}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebChromeClientEx;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v1, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$WebViewClientEx;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getTopicHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private initData(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 2
    .parameter "mCommonWebView"

    .prologue
    .line 526
    invoke-static {p1}, Lcom/didi/common/ui/webview/JavascriptBridge;->getInstance(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    sput-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 527
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/webview/JavascriptBridge;->setCommonWebView(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    .line 528
    const-string v0, "DidiJSBridge"

    invoke-virtual {p1, p0, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->addJavaScriptBridgerInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/JavascriptBridge;->registeJsFunctions()V

    .line 530
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;

    invoke-direct {v0, p0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$11;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 580
    sget-object v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 582
    return-void
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 390
    :cond_0
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 708
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const/4 v1, 0x0

    .line 712
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private redirectToActivity()V
    .locals 4

    .prologue
    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 728
    .local v0, now:J
    iget-wide v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->toSearchClickTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 729
    const-wide/16 v2, 0xbb8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->toSearchClickTime:J

    .line 731
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->gotoHtml(Ljava/lang/String;)V

    .line 767
    :cond_0
    return-void
.end method

.method private removeLocationView()V
    .locals 0

    .prologue
    .line 466
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 467
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 468
    return-void
.end method

.method private setLocationView()V
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 442
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 426
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 716
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 720
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 448
    new-instance v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$8;-><init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method protected jumpToActivity()V
    .locals 1

    .prologue
    .line 683
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 685
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    const v0, 0x7f0b04f2

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 687
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 688
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 700
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    goto :goto_0

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->showInvalidServiceDialog()V

    goto :goto_0

    .line 699
    :cond_2
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->redirectToActivity()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 790
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, results:Landroid/net/Uri;
    const/16 v2, 0x3ed

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 793
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, dataString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 795
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 799
    .end local v0           #dataString:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x3ee

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 800
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 801
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_2

    .line 807
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 808
    :cond_2
    iput-object v4, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mCallBack:Landroid/webkit/ValueCallback;

    .line 809
    iput-object v4, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;

    .line 810
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 106
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->initCover()V

    .line 107
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V

    .line 108
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 109
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 110
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 111
    const-string v0, "pgacthome_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 484
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 485
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->removeLocationView()V

    .line 486
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->wrap:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 488
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 489
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 672
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 673
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 674
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 477
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->setSwitcher()V

    .line 478
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 479
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 407
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 408
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToTopic()V

    .line 409
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setVoiceNoticeChangeTime(JJ)V

    .line 410
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->setLocationView()V

    .line 411
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->setRedirectListener()V

    .line 412
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->addCityListener()V

    .line 413
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->initDeparture()V

    .line 414
    invoke-direct {p0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->checkIMUnread()V

    .line 415
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 416
    invoke-direct {p0, p1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 417
    return-void
.end method
