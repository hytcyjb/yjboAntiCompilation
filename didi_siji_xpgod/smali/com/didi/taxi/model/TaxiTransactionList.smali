.class public Lcom/didi/taxi/model/TaxiTransactionList;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiTransactionList.java"


# instance fields
.field private hasMore:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/model/TaxiTransactionList;->hasMore:Z

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransactionList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/didi/taxi/model/TaxiTransactionList;->hasMore:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransactionList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public mock()V
    .locals 9

    .prologue
    const/16 v8, 0x1388

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/taxi/model/TaxiTransactionList;->list:Ljava/util/ArrayList;

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, transaction:Lcom/didi/taxi/model/TaxiTransaction;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 56
    .local v1, random:Ljava/util/Random;
    new-instance v2, Lcom/didi/common/base/DateTime;

    invoke-direct {v2}, Lcom/didi/common/base/DateTime;-><init>()V

    .line 57
    .local v2, time:Lcom/didi/common/base/DateTime;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 58
    new-instance v3, Lcom/didi/taxi/model/TaxiTransaction;

    .end local v3           #transaction:Lcom/didi/taxi/model/TaxiTransaction;
    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiTransaction;-><init>()V

    .line 59
    .restart local v3       #transaction:Lcom/didi/taxi/model/TaxiTransaction;
    const/16 v4, 0xbb8

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiTransaction;->setAmount(Ljava/lang/String;)V

    .line 60
    const-string v4, "\u5c0f\u4e50\u7684\u5600\u5600\u7ea2\u5305"

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiTransaction;->setDescription(Ljava/lang/String;)V

    .line 61
    const-string v4, "1880****2342"

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiTransaction;->setCardNumber(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiTransaction;->setIncome(Z)V

    .line 63
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lcom/didi/common/base/DateTime;->addHour(I)V

    .line 64
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lcom/didi/common/base/DateTime;->addMinute(I)V

    .line 65
    const-string v4, "MM-DD hh:mm"

    invoke-virtual {v2, v4}, Lcom/didi/common/base/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiTransaction;->setTime(Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/didi/taxi/model/TaxiTransactionList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, array:Lorg/json/JSONArray;
    const-string v1, "load_more"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/didi/taxi/model/TaxiTransactionList;->hasMore:Z

    .line 30
    const-string v1, "translist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    :goto_1
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "translist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/taxi/model/TaxiTransaction;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiTransaction;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiTransactionList;->list:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public setHasMore(Z)V
    .locals 0
    .parameter "hasMore"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/didi/taxi/model/TaxiTransactionList;->hasMore:Z

    .line 50
    return-void
.end method
