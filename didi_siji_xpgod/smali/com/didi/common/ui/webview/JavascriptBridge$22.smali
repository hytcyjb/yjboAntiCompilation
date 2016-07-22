.class Lcom/didi/common/ui/webview/JavascriptBridge$22;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/JavascriptBridge;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$resultHashMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/JavascriptBridge;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    iput-object p2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$cmd:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$params:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$resultHashMap:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 654
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$300(Lcom/didi/common/ui/webview/JavascriptBridge;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$300(Lcom/didi/common/ui/webview/JavascriptBridge;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$cmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    const-string v1, ""

    .line 656
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$params:Ljava/lang/String;

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$300(Lcom/didi/common/ui/webview/JavascriptBridge;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$cmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$resultHashMap:Ljava/util/Hashtable;

    const-string v3, "result"

    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1           #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_1
    return-void

    .line 660
    .restart local v1       #result:Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/didi/common/util/TimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->javaMethodMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$300(Lcom/didi/common/ui/webview/JavascriptBridge;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$cmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/JavascriptBridge$Function;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/didi/common/ui/webview/JavascriptBridge$22;->val$params:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/didi/common/ui/webview/JavascriptBridge$Function;->execute(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/didi/common/util/TimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
