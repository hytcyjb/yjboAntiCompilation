.class public Lcom/didi/common/ui/webview/JavascriptBridge;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/JavascriptBridge$Function;
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

.field private static mJavascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;


# instance fields
.field private contacts:[Ljava/lang/String;

.field private javaMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/ui/webview/JavascriptBridge$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;


# direct methods
.method private constructor <init>(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 1
    .parameter "mWebView"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 563
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/common/ui/webview/JavascriptBridge;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/common/ui/webview/JavascriptBridge;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cmd"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-nez v4, :cond_1

    move-object v1, v5

    .line 686
    :cond_0
    :goto_0
    return-object v1

    .line 630
    :cond_1
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 631
    .local v2, resultHashMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v4, v6, :cond_4

    .line 632
    const-string v1, ""

    .line 633
    .local v1, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    invoke-interface {v4, v5}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 646
    :goto_1
    const-string v5, "result"

    if-nez v1, :cond_3

    const-string v4, ""

    :goto_2
    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/didi/common/util/TimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/didi/common/util/TimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    move-object v4, v1

    .line 646
    goto :goto_2

    .line 650
    .end local v1           #result:Ljava/lang/String;
    :cond_4
    new-instance v4, Lcom/didi/common/ui/webview/JavascriptBridge$22;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/didi/common/ui/webview/JavascriptBridge$22;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-static {v4}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, waitTime:I
    :goto_3
    const-string v4, "result"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_5

    .line 680
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 681
    add-int/lit8 v3, v3, 0xa

    goto :goto_3

    .line 682
    :catch_1
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 686
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v4, "result"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    goto/16 :goto_0
.end method

.method public static getInstance(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/JavascriptBridge;
    .locals 1
    .parameter "commonWebViewEx"

    .prologue
    .line 82
    sget-object v0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJavascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/JavascriptBridge;-><init>(Lcom/didi/common/ui/webview/CommonWebViewEx;)V

    sput-object v0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJavascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 85
    :cond_0
    sget-object v0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJavascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    return-object v0
.end method


# virtual methods
.method public addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V
    .locals 1
    .parameter "cmd"
    .parameter "function"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public callH5Method(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"
    .parameter "json"

    .prologue
    .line 718
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

    .line 719
    iget-object v1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v1, :cond_1

    .line 720
    const-string v0, ""

    .line 721
    .local v0, jsUrl:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 722
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

    .line 726
    :goto_0
    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 731
    .end local v0           #jsUrl:Ljava/lang/String;
    :goto_1
    return-void

    .line 724
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

    .line 729
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
    .line 580
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

    .line 581
    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 583
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getThirdDomain()[Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, stringsThirdDomain:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getRootDomain()[Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, stringsRootDomain:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v4, listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    .line 588
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_0

    .line 589
    aget-object v8, v7, v2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v2           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 594
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 595
    aget-object v8, v6, v2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 601
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

    .line 603
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/JavascriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 623
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #stringsRootDomain:[Ljava/lang/String;
    .end local v7           #stringsThirdDomain:[Ljava/lang/String;
    :goto_2
    return-object v8

    .line 606
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

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 607
    .local v5, string:Ljava/lang/String;
    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v8}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/JavascriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 611
    :cond_4
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 612
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/JavascriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 619
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #string:Ljava/lang/String;
    .end local v6           #stringsRootDomain:[Ljava/lang/String;
    .end local v7           #stringsThirdDomain:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    const-string v8, "JavascriptBridge"

    const-string v9, "callHandler\u5f02\u5e38:"

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getJavaMethodMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/ui/webview/JavascriptBridge$Function;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getJsBridgeCallBack()Lcom/didi/common/ui/webview/JSBridgeCallBack;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-object v0
.end method

.method public registeJsFunctions()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "callNativeLogin"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$1;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "web_page_close"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$2;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$2;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_weixin_timeline"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$3;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$3;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_weixin_appmsg"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$4;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$4;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_sina_weibo"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$5;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$5;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_qq_appmsg"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$6;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$6;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "share_qzone"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$7;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$7;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "show_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$8;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$8;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "hide_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$9;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$9;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "invoke_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$10;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$10;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "page_close"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$11;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$11;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "page_refresh"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$12;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$12;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "native_redirect"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$13;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$13;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "init_entrance"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$14;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$14;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "resizeImage"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$15;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$15;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "showProgressHUD"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$16;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$16;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "hideProgressHUD"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$17;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$17;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "getUserInfo"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$18;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$18;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "getLocationInfo"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$19;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$19;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "getSystemInfo"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$20;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$20;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;

    const-string v1, "getContacts"

    new-instance v2, Lcom/didi/common/ui/webview/JavascriptBridge$21;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/JavascriptBridge$21;-><init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public setCommonWebView(Lcom/didi/common/ui/webview/CommonWebViewEx;)V
    .locals 0
    .parameter "commonWebView"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 692
    return-void
.end method

.method public setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 95
    return-void
.end method

.method public unRegisterListenr()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
