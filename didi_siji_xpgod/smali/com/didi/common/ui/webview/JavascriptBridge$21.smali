.class Lcom/didi/common/ui/webview/JavascriptBridge$21;
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
    .line 521
    iput-object p1, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10
    .parameter "jsonObject"

    .prologue
    .line 525
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 527
    .local v4, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "offset"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 528
    .local v5, offset:I
    const-string v8, "size"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 530
    .local v7, size:I
    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 531
    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    iget-object v9, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->mCommonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;
    invoke-static {v9}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$100(Lcom/didi/common/ui/webview/JavascriptBridge;)Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/Utils;->getContacts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$202(Lcom/didi/common/ui/webview/JavascriptBridge;[Ljava/lang/String;)[Ljava/lang/String;

    .line 534
    :cond_0
    if-gez v5, :cond_1

    const/4 v5, 0x0

    .line 535
    :cond_1
    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-le v5, v8, :cond_2

    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v8

    array-length v5, v8

    .line 537
    :cond_2
    add-int v8, v5, v7

    iget-object v9, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-le v8, v9, :cond_3

    iget-object v8, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v8

    array-length v7, v8

    .line 539
    :goto_0
    sub-int v2, v7, v5

    .line 541
    .local v2, length:I
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .local v1, ja:Lorg/json/JSONArray;
    move v3, v2

    .end local v2           #length:I
    .local v3, length:I
    move v6, v5

    .line 542
    .end local v5           #offset:I
    .local v6, offset:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #length:I
    .restart local v2       #length:I
    if-lez v3, :cond_4

    .line 543
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v5, v6, 0x1

    .end local v6           #offset:I
    .restart local v5       #offset:I
    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v3, v2

    .end local v2           #length:I
    .restart local v3       #length:I
    move v6, v5

    .end local v5           #offset:I
    .restart local v6       #offset:I
    goto :goto_1

    .line 537
    .end local v1           #ja:Lorg/json/JSONArray;
    .end local v3           #length:I
    .end local v6           #offset:I
    .restart local v5       #offset:I
    :cond_3
    add-int/2addr v7, v5

    goto :goto_0

    .line 546
    .end local v5           #offset:I
    .restart local v1       #ja:Lorg/json/JSONArray;
    .restart local v2       #length:I
    .restart local v6       #offset:I
    :cond_4
    const-string v8, "total"

    iget-object v9, p0, Lcom/didi/common/ui/webview/JavascriptBridge$21;->this$0:Lcom/didi/common/ui/webview/JavascriptBridge;

    #getter for: Lcom/didi/common/ui/webview/JavascriptBridge;->contacts:[Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/ui/webview/JavascriptBridge;->access$200(Lcom/didi/common/ui/webview/JavascriptBridge;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    const-string v8, "datas"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1           #ja:Lorg/json/JSONArray;
    .end local v2           #length:I
    .end local v6           #offset:I
    .end local v7           #size:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
