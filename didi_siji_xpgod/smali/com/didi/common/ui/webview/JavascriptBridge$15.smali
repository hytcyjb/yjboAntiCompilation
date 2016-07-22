.class Lcom/didi/common/ui/webview/JavascriptBridge$15;
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
    .line 422
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$15;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 425
    if-eqz p1, :cond_0

    .line 426
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, width:I
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, height:I
    const-string v3, "quality"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 429
    .local v1, quality:I
    iget-object v3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$15;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v3}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$15;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v3}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->selectPic(III)V

    .line 433
    .end local v0           #height:I
    .end local v1           #quality:I
    .end local v2           #width:I
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
