.class Lcom/didi/common/ui/webview/JavascriptBridge$14;
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
    .line 337
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$14;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 17
    .parameter "jsonObject"

    .prologue
    .line 342
    if-eqz p1, :cond_c

    .line 343
    const-string v15, "entrance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 344
    .local v5, jsonEntrance:Lorg/json/JSONObject;
    const-string v1, ""

    .line 345
    .local v1, entranceIcon:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 346
    const-string v15, "icon"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_0
    const-string v15, "buttons"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 349
    .local v4, jsonArray:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    if-eqz v4, :cond_b

    .line 351
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_b

    .line 352
    new-instance v7, Lcom/didi/common/ui/webview/WebViewToolModel;

    invoke-direct {v7}, Lcom/didi/common/ui/webview/WebViewToolModel;-><init>()V

    .line 354
    .local v7, model:Lcom/didi/common/ui/webview/WebViewToolModel;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 355
    .local v14, temp:Lorg/json/JSONObject;
    if-eqz v14, :cond_5

    .line 356
    const-string v15, "type"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    .line 358
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

    .line 363
    :cond_1
    const-string v15, "name"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->name:Ljava/lang/String;

    .line 364
    const-string v15, "icon"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->icon:Ljava/lang/String;

    .line 365
    const-string v15, "redirect_url"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->redirect_url:Ljava/lang/String;

    .line 367
    const-string v15, "page_refresh"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 368
    const v15, 0x7f0201df

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    .line 370
    :cond_2
    const-string v15, "data"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 371
    .local v3, joShare:Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 372
    const/4 v8, 0x0

    .line 374
    .local v8, oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const-string v15, "share_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, share_url:Ljava/lang/String;
    const-string v15, "share_icon_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, share_icon_url:Ljava/lang/String;
    const-string v15, "share_img_url"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, share_img_url:Ljava/lang/String;
    const-string v15, "share_title"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 378
    .local v12, share_title:Ljava/lang/String;
    const-string v15, "share_content"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, share_content:Ljava/lang/String;
    const-string v15, "share_weixin_timeline"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 384
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 385
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202dc

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    .line 399
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 400
    iput-object v13, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 401
    invoke-static {v10}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .end local v11           #share_img_url:Ljava/lang/String;
    :goto_2
    iput-object v11, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 402
    iput-object v12, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 403
    iput-object v9, v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 404
    iput-object v8, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .line 407
    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v9           #share_content:Ljava/lang/String;
    .end local v10           #share_icon_url:Ljava/lang/String;
    .end local v12           #share_title:Ljava/lang/String;
    .end local v13           #share_url:Ljava/lang/String;
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v3           #joShare:Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 386
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

    .line 387
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 388
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202da

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 389
    :cond_7
    const-string v15, "share_sina_weibo"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 390
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 391
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d8

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 392
    :cond_8
    const-string v15, "share_qq_appmsg"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 393
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 394
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d2

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto :goto_1

    .line 395
    :cond_9
    const-string v15, "share_qzone"

    iget-object v0, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 396
    new-instance v8, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v8           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v15, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v15}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v15

    invoke-direct {v8, v15}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 397
    .restart local v8       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const v15, 0x7f0202d4

    iput v15, v7, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    goto/16 :goto_1

    :cond_a
    move-object v11, v10

    .line 401
    goto/16 :goto_2

    .line 413
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

    iget-object v15, v0, Lcom/didi/common/ui/webview/JavascriptBridge$14;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v15}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/common/ui/webview/JavascriptBridge$14;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v15}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$000(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v15

    invoke-interface {v15, v6, v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V

    .line 418
    .end local v1           #entranceIcon:Ljava/lang/String;
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntrance:Lorg/json/JSONObject;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    :cond_c
    const/4 v15, 0x0

    return-object v15
.end method
