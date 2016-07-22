.class Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;
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
    .line 307
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$12;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->refresh()V

    .line 314
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
