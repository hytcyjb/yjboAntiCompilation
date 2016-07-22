.class Lcom/didi/common/ui/webview/JavascriptBridge$1;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/JavascriptBridge;->registeJsFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/JavascriptBridge;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/JavascriptBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$1;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$1;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 115
    .local v0, mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$1;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$100(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 118
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

    .line 119
    iget-object v1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$1;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V

    .line 121
    .end local v0           #mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
