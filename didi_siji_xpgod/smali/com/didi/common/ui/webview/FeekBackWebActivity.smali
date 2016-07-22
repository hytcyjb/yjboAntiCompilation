.class public Lcom/didi/common/ui/webview/FeekBackWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "FeekBackWebActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/FeekBackWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/didi/common/ui/webview/FeekBackWebActivity;->uploadNetLog()V

    return-void
.end method

.method private uploadNetLog()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/ui/webview/FeekBackWebActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/FeekBackWebActivity$2;-><init>(Lcom/didi/common/ui/webview/FeekBackWebActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/FeekBackWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    const-string v1, "upload_user_log"

    new-instance v2, Lcom/didi/common/ui/webview/FeekBackWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/FeekBackWebActivity$1;-><init>(Lcom/didi/common/ui/webview/FeekBackWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 44
    return-void
.end method
