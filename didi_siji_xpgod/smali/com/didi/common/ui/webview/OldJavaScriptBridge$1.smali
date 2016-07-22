.class Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;
.super Ljava/lang/Object;
.source "OldJavaScriptBridge.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldJavaScriptBridge;->registeJsFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 103
    .local v0, mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$100(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 106
    const-string v1, "JavascriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u767b\u5f55\u5931\u6548\u9875\u9762\uff0c\u91cd\u65b0\u767b\u5f55\u540e\u4f1a\u91cd\u65b0\u8df3\u5165\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$1;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V

    .line 109
    .end local v0           #mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
