.class public Lcom/didi/common/ui/webview/CommonWebViewEx;
.super Landroid/webkit/WebView;
.source "CommonWebViewEx.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/CommonWebViewEx$1;,
        Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;,
        Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;,
        Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;,
        Lcom/didi/common/ui/webview/CommonWebViewEx$JsObject;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIDI_AGENT:Ljava/lang/String; = "didi.passenger/"

.field private static final KEY_ARG_ARRAY:Ljava/lang/String; = "args"

.field private static final KEY_FUNCTION_NAME:Ljava/lang/String; = "func"

.field private static final KEY_INTERFACE_NAME:Ljava/lang/String; = "obj"

.field private static final MSG_PROMPT_HEADER:Ljava/lang/String; = "MyApp:"

.field public static final TICKET_ID:Ljava/lang/String; = "dcq_id"

.field public static final TICKET_RESULT_SCHEMA:Ljava/lang/String; = "dcq:"

.field private static final VAR_ARG_PREFIX:Ljava/lang/String; = "arg"

.field private static final mFilterMethods:[Ljava/lang/String;


# instance fields
.field private isShowProgressBar:Z

.field private mContext:Landroid/content/Context;

.field private mIsInjectedJS:Z

.field private mJsInterfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mJsStringCache:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

.field private mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getClass"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hashCode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notifyAll"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "equals"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "toString"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wait"

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mFilterMethods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z

    .line 103
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z

    .line 94
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/webview/CommonWebViewEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/webview/CommonWebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/didi/common/ui/webview/CommonWebViewEx;->handleJsInterface(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/webview/CommonWebViewEx;)Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/webview/CommonWebViewEx;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addProgressView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;

    const v1, 0x7f08042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;

    .line 110
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->addView(Landroid/view/View;II)V

    .line 113
    return-void
.end method

.method private createJsMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 14
    .parameter "interfaceName"
    .parameter "obj"
    .parameter "script"

    .prologue
    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 284
    .local v11, objClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v12, "if(typeof(window."

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")!=\'undefined\'){"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    console.log(\'window."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_js_interface_name is exist!!\');"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v12, "}else {"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v12, "    window."

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "={"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 293
    .local v10, methods:[Ljava/lang/reflect/Method;
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v8, v2, v4

    .line 294
    .local v8, method:Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, methodName:Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/didi/common/ui/webview/CommonWebViewEx;->filterMethods(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 293
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 300
    :cond_2
    const-string v12, "        "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":function("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v1, v12

    .line 303
    .local v1, argCount:I
    if-lez v1, :cond_4

    .line 304
    add-int/lit8 v7, v1, -0x1

    .line 305
    .local v7, maxCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v7, :cond_3

    .line 306
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 308
    :cond_3
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v1, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .end local v3           #i:I
    .end local v7           #maxCount:I
    :cond_4
    const-string v12, ") {"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_5

    .line 314
    const-string v12, "            return "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "prompt(\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MyApp:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_4
    const-string v12, "JSON.stringify({"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v12, "obj"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v12, "func"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v12, "args"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    if-lez v1, :cond_7

    .line 325
    add-int/lit8 v6, v1, -0x1

    .line 326
    .local v6, max:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v6, :cond_6

    .line 327
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 316
    .end local v3           #i:I
    .end local v6           #max:I
    :cond_5
    const-string v12, "            prompt(\'"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MyApp:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 329
    .restart local v3       #i:I
    .restart local v6       #max:I
    :cond_6
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .end local v3           #i:I
    .end local v6           #max:I
    :cond_7
    const-string v12, "]})"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v12, ");"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v12, "        }, "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 339
    .end local v1           #argCount:I
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v9           #methodName:Ljava/lang/String;
    :cond_8
    const-string v12, "    };"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v12, "}"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private filterMethods(Ljava/lang/String;)Z
    .locals 5
    .parameter "methodName"

    .prologue
    .line 433
    sget-object v0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mFilterMethods:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 434
    .local v3, method:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    const/4 v4, 0x1

    .line 439
    .end local v3           #method:Ljava/lang/String;
    :goto_1
    return v4

    .line 433
    .restart local v3       #method:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v3           #method:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private genJavascriptInterfacesString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 250
    iget-object v7, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 251
    iput-object v6, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 274
    :goto_0
    return-object v6

    .line 255
    :cond_0
    iget-object v6, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 257
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v5, script:Ljava/lang/StringBuilder;
    const-string v6, "javascript:(function JsAddJavascriptInterface_(){"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, interfaceName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 266
    .local v4, obj:Ljava/lang/Object;
    invoke-direct {p0, v2, v4, v5}, Lcom/didi/common/ui/webview/CommonWebViewEx;->createJsMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #interfaceName:Ljava/lang/String;
    .end local v4           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v6, "})()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getClassFromJsonObject(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 421
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 422
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 429
    :goto_0
    return-object v0

    .line 423
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 424
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 426
    :cond_1
    const-class v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleJsInterface(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 12
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 345
    const-string v10, "MyApp:"

    .line 346
    .local v10, prefix:Ljava/lang/String;
    invoke-virtual {p3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 347
    const/4 v11, 0x0

    .line 376
    :goto_0
    return v11

    .line 350
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    .local v7, jsonObj:Lorg/json/JSONObject;
    const-string v11, "obj"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, interfaceName:Ljava/lang/String;
    const-string v11, "func"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, methodName:Ljava/lang/String;
    const-string v11, "args"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 356
    .local v2, argsArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 357
    .local v1, args:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 359
    .local v3, count:I
    if-lez v3, :cond_1

    .line 360
    new-array v1, v3, [Ljava/lang/Object;

    .line 362
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 363
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 362
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 368
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v9, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->invokeJSInterfaceMethod(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 369
    const/4 v11, 0x1

    goto :goto_0

    .line 371
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #argsArray:Lorg/json/JSONArray;
    .end local v6           #interfaceName:Ljava/lang/String;
    .end local v7           #jsonObj:Lorg/json/JSONObject;
    .end local v9           #methodName:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 372
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 376
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private hasHoneycomb()Z
    .locals 2

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasJellyBeanMR1()Z
    .locals 2

    .prologue
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 128
    iput-object p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mContext:Landroid/content/Context;

    .line 129
    new-instance v2, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;

    const-string v3, "DidiJSBridge"

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v2, p0, v3, v4}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebChromeClientEx;-><init>(Lcom/didi/common/ui/webview/CommonWebViewEx;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    new-instance v2, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewClientEx;-><init>(Lcom/didi/common/ui/webview/CommonWebViewEx;Lcom/didi/common/ui/webview/CommonWebViewEx$1;)V

    invoke-super {p0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 133
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 135
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 137
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, agent:Ljava/lang/String;
    const-string v2, "didi.passenger/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #agent:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 141
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 142
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 145
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 148
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 149
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 150
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 151
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->removeSearchBoxImpl()Z

    .line 152
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->addProgressView()V

    .line 153
    return-void

    .line 138
    .restart local v0       #agent:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "didi.passenger/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private injectJavascriptInterfaces()V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadJavascriptInterfaces()V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->genJavascriptInterfacesString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, jsString:Ljava/lang/String;
    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadJavascriptInterfaces()V

    goto :goto_0
.end method

.method private injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 240
    instance-of v0, p1, Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces()V

    .line 243
    :cond_0
    return-void
.end method

.method private invokeJSInterfaceMethod(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 13
    .parameter "result"
    .parameter "interfaceName"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 381
    const/4 v10, 0x0

    .line 382
    .local v10, succeed:Z
    iget-object v11, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v11, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 383
    .local v6, obj:Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 385
    const/4 v11, 0x0

    .line 415
    :goto_0
    return v11

    .line 388
    :cond_0
    const/4 v7, 0x0

    .line 389
    .local v7, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 390
    .local v1, count:I
    if-eqz p4, :cond_1

    .line 391
    move-object/from16 v0, p4

    array-length v1, v0

    .line 394
    :cond_1
    if-lez v1, :cond_2

    .line 395
    new-array v7, v1, [Ljava/lang/Class;

    .line 396
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 397
    aget-object v11, p4, v3

    invoke-direct {p0, v11}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getClassFromJsonObject(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v7, v3

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    .end local v3           #i:I
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 403
    .local v5, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, p4

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 404
    .local v8, returnObj:Ljava/lang/Object;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 405
    .local v4, isVoid:Z
    :goto_2
    if-eqz v4, :cond_5

    const-string v9, ""

    .line 406
    .local v9, returnValue:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    const/4 v10, 0x1

    .line 414
    .end local v4           #isVoid:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v8           #returnObj:Ljava/lang/Object;
    .end local v9           #returnValue:Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    move v11, v10

    .line 415
    goto :goto_0

    .line 404
    .restart local v5       #method:Ljava/lang/reflect/Method;
    .restart local v8       #returnObj:Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 405
    .restart local v4       #isVoid:Z
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_3

    .line 408
    .end local v4           #isVoid:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v8           #returnObj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 409
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 410
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 411
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private loadJavascriptInterfaces()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private removeSearchBoxImpl()Z
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "searchBoxJavaBridge_"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addJavaScriptBridgerInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getWebViewCommonParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getWebViewCommonParams(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCommonParams(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, disHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lnet/tsz/afinal/http/AjaxParams;

    invoke-direct {v0}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 612
    .local v0, builder:Lnet/tsz/afinal/http/AjaxParams;
    :try_start_0
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, suuid:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    if-nez v2, :cond_0

    .line 614
    const-string v2, "token"

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v2, "phone"

    const-string v3, "*&^%$#@!"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/DesEncryptUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_1
    const-string v2, "vcode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v2, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "platform"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "datatype"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v2, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v2, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "city_id"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "area"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "uuid"

    sget-object v3, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "suuid"

    invoke-virtual {v0, v2, v1}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "susig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------------susign:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    invoke-virtual {v0}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #suuid:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 640
    :catch_0
    move-exception v2

    .line 642
    invoke-virtual {v0}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 157
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;->onGoBack()V

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaceName"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->injectJavascriptInterfaces()V

    goto :goto_0
.end method

.method public setShowProgressBar(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->isShowProgressBar:Z

    .line 99
    return-void
.end method

.method public setWebViewCallBack(Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/CommonWebViewEx$WebViewCallBack;

    .line 117
    return-void
.end method

.method public setWebViewModel(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------commonwebview setWebViewModel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/didi/common/ui/webview/CommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "------commonwebview setWebViewModel  cache"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "------commonwebview setWebViewModel nocache"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method
