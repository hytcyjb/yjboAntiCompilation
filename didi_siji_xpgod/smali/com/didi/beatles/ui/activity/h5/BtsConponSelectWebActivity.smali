.class public Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsConponSelectWebActivity.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    const-string v1, "selectCouponSuccess"

    new-instance v2, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity$1;-><init>(Lcom/didi/beatles/ui/activity/h5/BtsConponSelectWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 55
    return-void
.end method
