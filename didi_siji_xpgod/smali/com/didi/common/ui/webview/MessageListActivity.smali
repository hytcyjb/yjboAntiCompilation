.class public Lcom/didi/common/ui/webview/MessageListActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "MessageListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/MessageListActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    const-string v1, "page_messagelist_readed"

    new-instance v2, Lcom/didi/common/ui/webview/MessageListActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/MessageListActivity$1;-><init>(Lcom/didi/common/ui/webview/MessageListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 23
    return-void
.end method
