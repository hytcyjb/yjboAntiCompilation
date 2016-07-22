.class Lcom/didi/common/ui/webview/JavascriptBridge$5;
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
    .line 193
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$5;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .parameter "jsonObject"

    .prologue
    .line 198
    :try_start_0
    const-string v6, "share_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, share_url:Ljava/lang/String;
    const-string v6, "share_icon_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, share_icon_url:Ljava/lang/String;
    const-string v6, "share_img_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, share_img_url:Ljava/lang/String;
    const-string v6, "share_title"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, share_title:Ljava/lang/String;
    const-string v6, "share_content"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, share_content:Ljava/lang/String;
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v6, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v6}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v6

    invoke-direct {v0, v6}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 205
    .local v0, oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iput-object v4, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 206
    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 207
    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v3           #share_img_url:Ljava/lang/String;
    :goto_0
    iput-object v3, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 208
    iput-object v5, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 212
    iget-object v6, p0, Lcom/didi/common/ui/webview/JavascriptBridge$5;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v6}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 213
    iget-object v6, p0, Lcom/didi/common/ui/webview/JavascriptBridge$5;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v6}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v1           #share_content:Ljava/lang/String;
    .end local v2           #share_icon_url:Ljava/lang/String;
    .end local v4           #share_title:Ljava/lang/String;
    .end local v5           #share_url:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    return-object v6

    .restart local v0       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .restart local v1       #share_content:Ljava/lang/String;
    .restart local v2       #share_icon_url:Ljava/lang/String;
    .restart local v3       #share_img_url:Ljava/lang/String;
    .restart local v4       #share_title:Ljava/lang/String;
    .restart local v5       #share_url:Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 207
    goto :goto_0

    .line 215
    .end local v0           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v1           #share_content:Ljava/lang/String;
    .end local v2           #share_icon_url:Ljava/lang/String;
    .end local v3           #share_img_url:Ljava/lang/String;
    .end local v4           #share_title:Ljava/lang/String;
    .end local v5           #share_url:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
