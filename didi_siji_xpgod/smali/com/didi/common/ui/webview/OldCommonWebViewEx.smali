.class public Lcom/didi/common/ui/webview/OldCommonWebViewEx;
.super Landroid/webkit/WebView;
.source "OldCommonWebViewEx.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/OldCommonWebViewEx$1;,
        Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;,
        Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewClientEx;,
        Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;,
        Lcom/didi/common/ui/webview/OldCommonWebViewEx$JsObject;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

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

.field private mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

.field private mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
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

    sput-object v0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mFilterMethods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z

    .line 100
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->injectJavascriptInterfaces(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z

    return v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->handleJsInterface(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addProgressView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 105
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;

    const v1, 0x7f08042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressBar:Landroid/widget/ProgressBar;

    .line 107
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->addView(Landroid/view/View;II)V

    .line 110
    return-void
.end method

.method private createJsMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 14
    .parameter "interfaceName"
    .parameter "obj"
    .parameter "script"

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 279
    .local v11, objClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v12, "if(typeof(window."

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")!=\'undefined\'){"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
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

    .line 284
    const-string v12, "}else {"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v12, "    window."

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "={"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 288
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

    .line 289
    .local v8, method:Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, methodName:Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->filterMethods(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 288
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 295
    :cond_2
    const-string v12, "        "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":function("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v1, v12

    .line 298
    .local v1, argCount:I
    if-lez v1, :cond_4

    .line 299
    add-int/lit8 v7, v1, -0x1

    .line 300
    .local v7, maxCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v7, :cond_3

    .line 301
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 303
    :cond_3
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v1, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .end local v3           #i:I
    .end local v7           #maxCount:I
    :cond_4
    const-string v12, ") {"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_5

    .line 309
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

    .line 314
    :goto_4
    const-string v12, "JSON.stringify({"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
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

    .line 316
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

    .line 317
    const-string v12, "args"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    if-lez v1, :cond_7

    .line 320
    add-int/lit8 v6, v1, -0x1

    .line 321
    .local v6, max:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v6, :cond_6

    .line 322
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 311
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

    .line 324
    .restart local v3       #i:I
    .restart local v6       #max:I
    :cond_6
    const-string v12, "arg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .end local v3           #i:I
    .end local v6           #max:I
    :cond_7
    const-string v12, "]})"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v12, ");"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v12, "        }, "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 334
    .end local v1           #argCount:I
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v9           #methodName:Ljava/lang/String;
    :cond_8
    const-string v12, "    };"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v12, "}"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private filterMethods(Ljava/lang/String;)Z
    .locals 5
    .parameter "methodName"

    .prologue
    .line 428
    sget-object v0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mFilterMethods:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 429
    .local v3, method:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    const/4 v4, 0x1

    .line 434
    .end local v3           #method:Ljava/lang/String;
    :goto_1
    return v4

    .line 428
    .restart local v3       #method:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v3           #method:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private genJavascriptInterfacesString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 245
    iget-object v7, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 246
    iput-object v6, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 269
    :goto_0
    return-object v6

    .line 250
    :cond_0
    iget-object v6, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 252
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v5, script:Ljava/lang/StringBuilder;
    const-string v6, "javascript:(function JsAddJavascriptInterface_(){"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, interfaceName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 261
    .local v4, obj:Ljava/lang/Object;
    invoke-direct {p0, v2, v4, v5}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->createJsMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #interfaceName:Ljava/lang/String;
    .end local v4           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v6, "})()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
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
    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 416
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 417
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 424
    :goto_0
    return-object v0

    .line 418
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 419
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 421
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
    .line 340
    const-string v10, "MyApp:"

    .line 341
    .local v10, prefix:Ljava/lang/String;
    invoke-virtual {p3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 342
    const/4 v11, 0x0

    .line 371
    :goto_0
    return v11

    .line 345
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    .local v7, jsonObj:Lorg/json/JSONObject;
    const-string v11, "obj"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, interfaceName:Ljava/lang/String;
    const-string v11, "func"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, methodName:Ljava/lang/String;
    const-string v11, "args"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 351
    .local v2, argsArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 352
    .local v1, args:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 353
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 354
    .local v3, count:I
    if-lez v3, :cond_1

    .line 355
    new-array v1, v3, [Ljava/lang/Object;

    .line 357
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 358
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 363
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v9, v1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->invokeJSInterfaceMethod(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 364
    const/4 v11, 0x1

    goto :goto_0

    .line 366
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #argsArray:Lorg/json/JSONArray;
    .end local v6           #interfaceName:Ljava/lang/String;
    .end local v7           #jsonObj:Lorg/json/JSONObject;
    .end local v9           #methodName:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 367
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 371
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private hasHoneycomb()Z
    .locals 2

    .prologue
    .line 438
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
    .line 442
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
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mContext:Landroid/content/Context;

    .line 126
    new-instance v1, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;

    invoke-direct {v1, p0, v4}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebChromeClientEx;-><init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Lcom/didi/common/ui/webview/OldCommonWebViewEx$1;)V

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 127
    new-instance v1, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewClientEx;

    invoke-direct {v1, p0, v4}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewClientEx;-><init>(Lcom/didi/common/ui/webview/OldCommonWebViewEx;Lcom/didi/common/ui/webview/OldCommonWebViewEx$1;)V

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 130
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 137
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 144
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 145
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 146
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->removeSearchBoxImpl()Z

    .line 147
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->addProgressView()V

    .line 148
    return-void
.end method

.method private injectJavascriptInterfaces()V
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadJavascriptInterfaces()V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->genJavascriptInterfacesString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, jsString:Ljava/lang/String;
    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadJavascriptInterfaces()V

    goto :goto_0
.end method

.method private injectJavascriptInterfaces(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 235
    instance-of v0, p1, Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->injectJavascriptInterfaces()V

    .line 238
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
    .line 376
    const/4 v10, 0x0

    .line 377
    .local v10, succeed:Z
    iget-object v11, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v11, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 378
    .local v6, obj:Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 380
    const/4 v11, 0x0

    .line 410
    :goto_0
    return v11

    .line 383
    :cond_0
    const/4 v7, 0x0

    .line 384
    .local v7, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 385
    .local v1, count:I
    if-eqz p4, :cond_1

    .line 386
    move-object/from16 v0, p4

    array-length v1, v0

    .line 389
    :cond_1
    if-lez v1, :cond_2

    .line 390
    new-array v7, v1, [Ljava/lang/Class;

    .line 391
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 392
    aget-object v11, p4, v3

    invoke-direct {p0, v11}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getClassFromJsonObject(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v7, v3

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    .end local v3           #i:I
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 398
    .local v5, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, p4

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 399
    .local v8, returnObj:Ljava/lang/Object;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 400
    .local v4, isVoid:Z
    :goto_2
    if-eqz v4, :cond_5

    const-string v9, ""

    .line 401
    .local v9, returnValue:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    const/4 v10, 0x1

    .line 409
    .end local v4           #isVoid:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v8           #returnObj:Ljava/lang/Object;
    .end local v9           #returnValue:Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    move v11, v10

    .line 410
    goto :goto_0

    .line 399
    .restart local v5       #method:Ljava/lang/reflect/Method;
    .restart local v8       #returnObj:Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 400
    .restart local v4       #isVoid:Z
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_3

    .line 403
    .end local v4           #isVoid:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v8           #returnObj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 404
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 405
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 406
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private loadJavascriptInterfaces()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private removeSearchBoxImpl()Z
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "searchBoxJavaBridge_"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    .line 220
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
    .line 200
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getWebViewCommonParams()Ljava/lang/String;
    .locals 5

    .prologue
    .line 590
    new-instance v0, Lnet/tsz/afinal/http/AjaxParams;

    invoke-direct {v0}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 592
    .local v0, builder:Lnet/tsz/afinal/http/AjaxParams;
    :try_start_0
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, suuid:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    if-nez v2, :cond_0

    .line 594
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    const-string v2, "phone"

    const-string v3, "*&^%$#@!"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/DesEncryptUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
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

    .line 598
    const-string v2, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v2, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v2, "platform"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v2, "datatype"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v2, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v2, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v2, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v2, "city_id"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, "area"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v2, "uuid"

    sget-object v3, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "suuid"

    invoke-virtual {v0, v2, v1}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
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

    .line 614
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

    .line 617
    invoke-virtual {v0}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #suuid:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 615
    :catch_0
    move-exception v2

    .line 617
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
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;->onGoBack()V

    .line 157
    :cond_0
    const/4 v0, 0x1

    .line 160
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
    .line 205
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->hasJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mJsStringCache:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->injectJavascriptInterfaces()V

    goto :goto_0
.end method

.method public setShowProgressBar(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->isShowProgressBar:Z

    .line 96
    return-void
.end method

.method public setWebViewCallBack(Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewCallBack:Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;

    .line 114
    return-void
.end method

.method public setWebViewModel(Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 176
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

    .line 177
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "------commonwebview setWebViewModel  cache"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v0, "------commonwebview setWebViewModel nocache"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method
