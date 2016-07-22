.class public Lcom/didi/beatles/model/order/BtsPrice;
.super Ljava/lang/Object;
.source "BtsPrice.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;,
        Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a8504782f76f76eL


# instance fields
.field private discountPriceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;",
            ">;"
        }
    .end annotation
.end field

.field private normalPriceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;",
            ">;"
        }
    .end annotation
.end field

.field private realPrice:Ljava/lang/String;

.field private totalPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "btsPriceJson"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    .line 22
    if-nez p1, :cond_1

    .line 44
    :cond_0
    return-void

    .line 25
    :cond_1
    const-string v4, "total_price"

    const-string v5, "0"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->totalPrice:Ljava/lang/String;

    .line 26
    const-string v4, "real_price"

    const-string v5, "0"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->realPrice:Ljava/lang/String;

    .line 27
    const-string v4, "normal_price"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 28
    .local v3, normalPriceArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 30
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 31
    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;-><init>(Lcom/didi/beatles/model/order/BtsPrice;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    const-string v4, "discount_price"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, discountPriceArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 39
    .restart local v2       #len:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 40
    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;-><init>(Lcom/didi/beatles/model/order/BtsPrice;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Lcom/didi/beatles/model/order/BtsPrice;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_0

    move v1, v3

    .line 128
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->totalPrice:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsPrice;->totalPrice:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsPrice;->getNormalPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    move v1, v3

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    move v1, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsPrice;->getNormalPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->equals(Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 119
    goto :goto_0

    .line 117
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->equals(Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    .line 125
    goto :goto_0

    .line 122
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDiscountPriceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice;->discountPriceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNormalPriceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice;->normalPriceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRealPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice;->realPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice;->totalPrice:Ljava/lang/String;

    return-object v0
.end method
