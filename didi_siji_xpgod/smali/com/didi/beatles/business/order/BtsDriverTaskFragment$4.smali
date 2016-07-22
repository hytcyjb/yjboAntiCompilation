.class Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;
.super Ljava/lang/Object;
.source "BtsDriverTaskFragment.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->addJsFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v6

    .line 316
    :cond_1
    const-string v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, type:Ljava/lang/String;
    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, url:Ljava/lang/String;
    const/4 v1, 0x1

    .line 320
    .local v1, tab:I
    const-string v4, "params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const-string v4, "params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    .local v0, paramsObj:Lorg/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    const-string v4, "tab"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .end local v0           #paramsObj:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;
    invoke-static {v4}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;
    invoke-static {v4}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;->onRedirectToWeb(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;
    invoke-static {v4}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;
    invoke-static {v4}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;->onChangeTab(I)V

    goto :goto_0
.end method
