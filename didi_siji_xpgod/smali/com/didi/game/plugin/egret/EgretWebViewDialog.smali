.class public Lcom/didi/game/plugin/egret/EgretWebViewDialog;
.super Landroid/webkit/WebView;
.source "EgretWebViewDialog.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EgretWebView"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private layout:Landroid/widget/FrameLayout;

.field layoutChangedOnce:Z

.field private mainThreadHandler:Landroid/os/Handler;

.field private proxy:Ljava/lang/Object;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 13
    .parameter "context"
    .parameter "proxy"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layoutChangedOnce:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->mainThreadHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/didi/game/plugin/egret/module/WebViewClientImpl;

    invoke-direct {v0, p1}, Lcom/didi/game/plugin/egret/module/WebViewClientImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    const-string v0, "egret_webview_context"

    invoke-virtual {p0, p0, v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->proxy:Ljava/lang/Object;

    .line 50
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 51
    .local v10, manager:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 53
    .local v9, display:Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 54
    .local v8, deviceWidth:I
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 56
    .local v7, deviceHeight:I
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layout:Landroid/widget/FrameLayout;

    .line 57
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    int-to-double v0, v8

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 61
    int-to-double v0, v7

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v12, webViewParams:Landroid/widget/FrameLayout$LayoutParams;
    int-to-double v0, v8

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 67
    int-to-double v0, v7

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 68
    invoke-virtual {p0, v12}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$1;

    invoke-direct {v0, p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog$1;-><init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 88
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 90
    new-instance v0, Lcom/didi/game/plugin/egret/EgretWebViewDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog$2;-><init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    invoke-virtual {p0, v0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->onDialogClose()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private onDialogClose()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, currentUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->loadUrl(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 165
    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->close()V

    .line 150
    return-void
.end method

.method public initWithUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->url:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->loadUrl(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public loginDone(Ljava/lang/String;)V
    .locals 5
    .parameter "result"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 169
    const-string v2, "EgretWebView"

    const-string v3, "loginDone"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "EgretWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginDone result =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "login"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 175
    .local v1, loginRet:Lorg/json/JSONObject;
    const-string v2, "EgretWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginDone params =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->proxy:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #loginRet:Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->mainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/didi/game/plugin/egret/EgretWebViewDialog$4;

    invoke-direct {v3, p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog$4;-><init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-super {p0, v0, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 126
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "pKeyCode"
    .parameter "pKeyEvent"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 213
    const-string v3, "EgretWebView"

    const-string v4, "onKeyDown"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->goBack()V

    .line 236
    :goto_0
    return v2

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 221
    if-ne p1, v5, :cond_1

    .line 222
    const-string v3, "EgretWebView"

    const-string v4, "onKeyDown BACK"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 226
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "result"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->proxy:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 229
    invoke-virtual {p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->closeDialog()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layoutChangedOnce:Z

    if-nez v0, :cond_0

    .line 117
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->layoutChangedOnce:Z

    .line 120
    :cond_0
    return-void
.end method

.method public payDone(Ljava/lang/String;)V
    .locals 5
    .parameter "result"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 191
    const-string v2, "EgretWebView"

    const-string v3, "payDone"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "EgretWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payDone result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "pay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    .local v1, payRet:Lorg/json/JSONObject;
    const-string v2, "EgretWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payDone params =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->proxy:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #payRet:Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->mainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/didi/game/plugin/egret/EgretWebViewDialog$5;

    invoke-direct {v3, p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog$5;-><init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretWebViewDialog;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/game/plugin/egret/EgretWebViewDialog$3;

    invoke-direct {v1, p0}, Lcom/didi/game/plugin/egret/EgretWebViewDialog$3;-><init>(Lcom/didi/game/plugin/egret/EgretWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
