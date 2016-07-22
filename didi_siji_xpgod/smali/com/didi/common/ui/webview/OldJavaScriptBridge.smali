.class public Lcom/didi/common/ui/webview/OldJavaScriptBridge;
.super Ljava/lang/Object;
.source "OldJavaScriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;
    }
.end annotation


# static fields
.field public static final LOGIN_TOKEN_INVIDATE:Ljava/lang/String; = "callNativeLogin"

.field private static final SHARE_CONTENT:Ljava/lang/String; = "share_content"

.field private static final SHARE_ICON_URL:Ljava/lang/String; = "share_icon_url"

.field private static final SHARE_IMG_URL:Ljava/lang/String; = "share_img_url"

.field private static final SHARE_TITLE:Ljava/lang/String; = "share_title"

.field public static final SHARE_TYPE_QQ:Ljava/lang/String; = "share_qq_appmsg"

.field public static final SHARE_TYPE_QZONE:Ljava/lang/String; = "share_qzone"

.field public static final SHARE_TYPE_SINAWEIBO:Ljava/lang/String; = "share_sina_weibo"

.field public static final SHARE_TYPE_WCHAT:Ljava/lang/String; = "share_weixin_appmsg"

.field public static final SHARE_TYPE_WCHATMOMENT:Ljava/lang/String; = "share_weixin_timeline"

.field private static final SHARE_URL:Ljava/lang/String; = "share_url"

.field private static final TAG:Ljava/lang/String; = "JavascriptBridge"

.field public static final WEBVIEW_TOOL_TYPE_CLOSE:Ljava/lang/String; = "page_close"

.field public static final WEBVIEW_TOOL_TYPE_NATIVEREDIRECT:Ljava/lang/String; = "native_redirect"

.field public static final WEBVIEW_TOOL_TYPE_REFRESH:Ljava/lang/String; = "page_refresh"

.field public static final WEBVIEW_TOOL_TYPE_WEBREDIRECT:Ljava/lang/String; = "web_redirect"

.field public static final WEB_PAGE_CLOSE:Ljava/lang/String; = "web_page_close"

.field private static mJavascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;


# instance fields
.field private javaMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

.field private mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)V
    .locals 1
    .parameter "mWebView"

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    .line 443
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    .line 444
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cmd"
    .parameter "params"

    .prologue
    .line 500
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    if-nez v3, :cond_0

    .line 501
    const/4 v3, 0x0

    .line 537
    :goto_0
    return-object v3

    .line 503
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 504
    .local v1, resultHashMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/didi/common/ui/webview/OldJavaScriptBridge$17;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$17;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-static {v3}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, waitTime:I
    :goto_1
    const-string v3, "result"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_1

    .line 531
    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 537
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v3, "result"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Lcom/didi/common/ui/webview/OldJavaScriptBridge;
    .locals 1
    .parameter "commonWebViewEx"

    .prologue
    .line 71
    new-instance v0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;-><init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)V

    sput-object v0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJavascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    .line 73
    sget-object v0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJavascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    return-object v0
.end method


# virtual methods
.method public addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;)V
    .locals 1
    .parameter "cmd"
    .parameter "function"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public callH5Method(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"
    .parameter "json"

    .prologue
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callH5Method methodName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    if-eqz v1, :cond_1

    .line 567
    const-string v0, ""

    .line 568
    .local v0, jsUrl:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 578
    .end local v0           #jsUrl:Ljava/lang/String;
    :goto_1
    return-void

    .line 571
    .restart local v0       #jsUrl:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    .end local v0           #jsUrl:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webView is null when callH5Method methodName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .parameter "cmd"
    .parameter "params"
    .parameter "obj"

    .prologue
    .line 457
    :try_start_0
    const-string v8, "JavascriptBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "js\u56de\u8c03\u6570\u636e: cmd:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  params:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v8, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 460
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getThirdDomain()[Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, stringsThirdDomain:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getRootDomain()[Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, stringsRootDomain:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v4, listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    .line 465
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_0

    .line 466
    aget-object v8, v7, v2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 471
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 472
    aget-object v8, v6, v2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    .end local v2           #i:I
    :cond_1
    const-string v8, "JavascriptBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u767d\u540d\u5355\u5217\u8868 \u5982\u679c\u767d\u540d\u5355\u5217\u8868\u4e0d\u4e3a\u7a7a\uff0c\u5219\u53ef\u6267\u884cJS\u56de\u8c03\u4ee3\u7801\uff0c\u5982\u679c\u8bbf\u95ee\u7684URL\u5728\u6b64\u767d\u540d\u5355\u91cc\u9762\uff0c\u4e5f\u53ef\u6267\u884cJS\u56de\u8c03\uff0c\u5426\u5219\u4e0d\u4f1a\u6267\u884cJS\u56de\u8c03\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 496
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #stringsRootDomain:[Ljava/lang/String;
    .end local v7           #stringsThirdDomain:[Ljava/lang/String;
    :goto_2
    return-object v8

    .line 483
    .restart local v4       #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #stringsRootDomain:[Ljava/lang/String;
    .restart local v7       #stringsThirdDomain:[Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 484
    .local v5, string:Ljava/lang/String;
    iget-object v8, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v8}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 492
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #string:Ljava/lang/String;
    .end local v6           #stringsRootDomain:[Ljava/lang/String;
    .end local v7           #stringsThirdDomain:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 493
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    const-string v8, "JavascriptBridge"

    const-string v9, "callHandler\u5f02\u5e38:"

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getJsBridgeCallBack()Lcom/didi/common/ui/webview/JSBridgeCallBack;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-object v0
.end method

.method public registeJsFunctions()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "callNativeLogin"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "web_page_close"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$2;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$2;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_weixin_timeline"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_weixin_appmsg"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$4;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$4;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_sina_weibo"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$5;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$5;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_qq_appmsg"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$6;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$6;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_qzone"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$7;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$7;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "show_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$8;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$8;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "hide_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$9;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$9;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "invoke_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$10;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$10;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "page_close"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$11;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$11;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "page_refresh"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "native_redirect"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$13;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$13;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "init_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "showProgressHUD"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$15;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$15;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "hideProgressHUD"

    new-instance v2, Lcom/didi/common/ui/webview/OldJavaScriptBridge$16;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge$16;-><init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void
.end method

.method public setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 83
    return-void
.end method

.method public unRegisterListenr()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    return-void
.end method
