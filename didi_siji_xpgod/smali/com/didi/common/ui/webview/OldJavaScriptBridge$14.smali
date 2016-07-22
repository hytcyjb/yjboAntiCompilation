.class Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;
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
    .line 325
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 17
    .parameter "jsonObject"

    .prologue
    .line 330
    if-eqz p1, :cond_c

    .line 331
    const-string v15, "entrance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 332
    .local v5, jsonEntrance:Lorg/json/JSONObject;
    const-string v1, ""

    .line 333
    .local v1, entranceIcon:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 334
    const-string v15, "icon"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    const-string v15, "buttons"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 337
    .local v4, jsonArray:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    if-eqz v4, :cond_b

    .line 339
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_b

    .line 340
    new-instance v7, Lcom/didi/common/ui/webview/WebViewToolModel;

    invoke-direct {v7}, Lcom/didi/common/ui/webview/WebViewToolModel;-><init>()V

    .line 342
    .local v7, model:Lcom/didi/common/ui/webview/WebViewToolModel;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 343
    .local v14, temp:Lorg/json/JSONObject;
    if-eqz v14, :cond_5

    .line 344
    const-string v15, "type"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    .line 346
    const-string v15, "share_weixin_timeline"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "share_weixin_appmsg"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "share_sina_weibo"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "share_qq_appmsg"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "share_qzone"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "page_refresh"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "web_redirect"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 351
    :cond_1
    const-string v15, "name"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->name:Ljava/lang/String;

    .line 352
    const-string v15, "icon"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->icon:Ljava/lang/String;

    .line 353
    const-string v15, "redirect_url"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->redirect_url:Ljava/lang/String;

    .line 355
    const-string v15, "page_refresh"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 356
    const v15, 0x7f0201df

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    .line 358
    :cond_2
    const-string v15, "data"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 359
    .local v3, joShare:Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 360
    const/4 v8, 0x0

    .line 362
    .local v8, oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const-string v15, "share_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 363
    .local v13, share_url:Ljava/lang/String;
    const-string v15, "share_icon_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 364
    .local v10, share_icon_url:Ljava/lang/String;
    const-string v15, "share_img_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, share_img_url:Ljava/lang/String;
    const-string v15, "share_title"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 366
    .local v12, share_title:Ljava/lang/String;
    const-string v15, "share_content"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, share_content:Ljava/lang/String;
    const-string v15, "share_weixin_timeline"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 372
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 373
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202dc

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    .line 387
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 388
    iput-object v13, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 389
    invoke-static {v10}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .end local v11           #share_img_url:Ljava/lang/String;
    :goto_2
    iput-object v11, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 390
    iput-object v12, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 391
    iput-object v9, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 392
    iput-object v8, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .line 395
    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v9           #share_content:Ljava/lang/String;
    .end local v10           #share_icon_url:Ljava/lang/String;
    .end local v12           #share_title:Ljava/lang/String;
    .end local v13           #share_url:Ljava/lang/String;
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v3           #joShare:Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 374
    .restart local v3       #joShare:Lorg/json/JSONObject;
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .restart local v9       #share_content:Ljava/lang/String;
    .restart local v10       #share_icon_url:Ljava/lang/String;
    .restart local v11       #share_img_url:Ljava/lang/String;
    .restart local v12       #share_title:Ljava/lang/String;
    .restart local v13       #share_url:Ljava/lang/String;
    :cond_6
    const-string v15, "share_weixin_appmsg"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 375
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 376
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202da

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 377
    :cond_7
    const-string v15, "share_sina_weibo"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 378
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 379
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d8

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 380
    :cond_8
    const-string v15, "share_qq_appmsg"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 381
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 382
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d2

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 383
    :cond_9
    const-string v15, "share_qzone"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 384
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 385
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d4

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto/16 :goto_1

    :cond_a
    move-object v11, v10

    .line 389
    goto/16 :goto_2

    .line 401
    .end local v2           #i:I
    .end local v3           #joShare:Lorg/json/JSONObject;
    .end local v7           #model:Lcom/didi/common/ui/webview/WebViewToolModel;
    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v9           #share_content:Ljava/lang/String;
    .end local v10           #share_icon_url:Ljava/lang/String;
    .end local v11           #share_img_url:Ljava/lang/String;
    .end local v12           #share_title:Ljava/lang/String;
    .end local v13           #share_url:Ljava/lang/String;
    .end local v14           #temp:Lorg/json/JSONObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v15}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 402
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/common/ui/webview/OldJavaScriptBridge$14;->this$0:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    #getter for: Lcom/didi/common/ui/webview/OldJavaScriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v15}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->access$000(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v15

    invoke-interface {v15, v6, v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V

    .line 406
    .end local v1           #entranceIcon:Ljava/lang/String;
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntrance:Lorg/json/JSONObject;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    :cond_c
    const/4 v15, 0x0

    return-object v15
.end method
