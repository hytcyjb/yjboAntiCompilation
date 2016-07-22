.class Lcom/didi/common/ui/webview/WebActivity$6$5;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/IImg2StrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebActivity$6;->selectPic(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/WebActivity$6;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebActivity$6$5;->this$1:Lcom/didi/common/ui/webview/WebActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 596
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:resultBackFromJava(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebActivity$6$5;->this$1:Lcom/didi/common/ui/webview/WebActivity$6;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebActivity$6;->this$0:Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/WebActivity;->getmCommonWebView()Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 600
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method
