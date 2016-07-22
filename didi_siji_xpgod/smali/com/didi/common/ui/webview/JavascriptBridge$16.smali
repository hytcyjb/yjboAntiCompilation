.class Lcom/didi/common/ui/webview/JavascriptBridge$16;
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
    .line 437
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$16;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter "jsonObject"

    .prologue
    const/4 v5, 0x0

    .line 441
    if-eqz p1, :cond_0

    .line 443
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, loadingText:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 445
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$16;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$100(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1           #loadingText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
