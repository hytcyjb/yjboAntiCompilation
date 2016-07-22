.class public Lcom/didi/beatles/model/order/BtsOrderCalculate;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderCalculate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public amount:Ljava/lang/String;

.field public extr_info:Ljava/lang/String;

.field public sign_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 40
    const-string v5, "amount"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderCalculate;->amount:Ljava/lang/String;

    .line 41
    const-string v5, "extr_info"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderCalculate;->extr_info:Ljava/lang/String;

    .line 42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderCalculate;->sign_info:Ljava/util/ArrayList;

    .line 44
    const-string v5, "sign_info"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, arraySignInfo:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 47
    .local v4, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 48
    new-instance v2, Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;-><init>()V

    .line 49
    .local v2, item:Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 50
    .local v3, jsonItem:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 51
    const-string v5, "color"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;->color:Ljava/lang/String;

    .line 52
    const-string v5, "font"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;->font:Ljava/lang/String;

    .line 53
    const-string v5, "text"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;->text:Ljava/lang/String;

    .line 54
    iget-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderCalculate;->sign_info:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1           #i:I
    .end local v2           #item:Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;
    .end local v3           #jsonItem:Lorg/json/JSONObject;
    .end local v4           #len:I
    :cond_1
    return-void
.end method
