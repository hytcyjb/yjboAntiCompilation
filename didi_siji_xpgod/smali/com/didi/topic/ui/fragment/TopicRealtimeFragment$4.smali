.class final Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->callHandler(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lcom/didi/car/webview/JsCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$jsCallback:Lcom/didi/car/webview/JsCallback;

.field final synthetic val$params:Lorg/json/JSONObject;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/webview/JsCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$params:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$jsCallback:Lcom/didi/car/webview/JsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$params:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$params:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v2, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->getJavaMethodMap()Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$cmd:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 355
    :goto_0
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$jsCallback:Lcom/didi/car/webview/JsCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/didi/car/webview/JsCallback;->apply([Ljava/lang/Object;)V

    .line 363
    :cond_1
    :goto_1
    return-void

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v2, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->getJavaMethodMap()Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$cmd:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    iget-object v5, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$4;->val$params:Lorg/json/JSONObject;

    invoke-interface {v2, v5}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4
    :try_end_0
    .catch Lcom/didi/car/webview/JsCallback$JsCallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, je:Lcom/didi/car/webview/JsCallback$JsCallbackException;
    invoke-virtual {v1}, Lcom/didi/car/webview/JsCallback$JsCallbackException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v1           #je:Lcom/didi/car/webview/JsCallback$JsCallbackException;
    :catch_1
    move-exception v0

    .line 361
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
