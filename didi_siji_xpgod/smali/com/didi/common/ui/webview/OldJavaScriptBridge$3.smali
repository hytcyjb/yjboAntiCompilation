.class Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;
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
    .line 122
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .parameter "jsonObject"

    .prologue
    .line 127
    :try_start_0
    const-string v6, "share_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, share_url:Ljava/lang/String;
    const-string v6, "share_icon_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, share_icon_url:Ljava/lang/String;
    const-string v6, "share_img_url"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, share_img_url:Ljava/lang/String;
    const-string v6, "share_title"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, share_title:Ljava/lang/String;
    const-string v6, "share_content"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, share_content:Ljava/lang/String;
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v6, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v6}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v6

    invoke-direct {v0, v6}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 134
    .local v0, oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iput-object v4, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 135
    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 136
    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v3           #share_img_url:Ljava/lang/String;
    :goto_0
    iput-object v3, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 137
    iput-object v5, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 141
    iget-object v6, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v6}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 142
    iget-object v6, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$3;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v6}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
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

    .line 136
    goto :goto_0

    .line 144
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
