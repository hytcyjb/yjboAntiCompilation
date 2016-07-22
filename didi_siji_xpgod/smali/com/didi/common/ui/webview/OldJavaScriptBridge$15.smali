.class Lcom/didi/common/ui/webview/OldJavaScriptBridge$15;
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
    .line 410
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$15;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter "jsonObject"

    .prologue
    const/4 v5, 0x0

    .line 414
    if-eqz p1, :cond_0

    .line 416
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, loadingText:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 418
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$15;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$100(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1           #loadingText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
