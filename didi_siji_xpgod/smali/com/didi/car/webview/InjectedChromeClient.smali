.class public Lcom/didi/car/webview/InjectedChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "InjectedChromeClient.java"


# instance fields
.field protected mIsInjectedJS:Z

.field protected mJsCallJava:Lcom/didi/car/webview/JsCallJava;


# direct methods
.method public constructor <init>(Lcom/didi/car/webview/JsCallJava;)V
    .locals 0
    .parameter "jsCallJava"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/didi/car/webview/InjectedChromeClient;->mJsCallJava:Lcom/didi/car/webview/JsCallJava;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "injectedName"
    .parameter "injectedCls"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 16
    new-instance v0, Lcom/didi/car/webview/JsCallJava;

    invoke-direct {v0, p1, p2}, Lcom/didi/car/webview/JsCallJava;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/didi/car/webview/InjectedChromeClient;->mJsCallJava:Lcom/didi/car/webview/JsCallJava;

    .line 17
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 26
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/car/webview/InjectedChromeClient;->mJsCallJava:Lcom/didi/car/webview/JsCallJava;

    invoke-virtual {v0, p1, p3}, Lcom/didi/car/webview/JsCallJava;->call(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0
.end method
