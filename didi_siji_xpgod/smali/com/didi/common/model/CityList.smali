.class public Lcom/didi/common/model/CityList;
.super Lcom/didi/common/model/BaseObject;
.source "CityList.java"


# instance fields
.field public jsonString:Ljava/lang/String;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/didi/common/model/City;
    .locals 1
    .parameter "index"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/didi/common/util/CollectionUtil;->isAvailable(Ljava/util/Collection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/City;

    goto :goto_0
.end method

.method public getCityById(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 4
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v3, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/City;

    .line 40
    .local v0, city:Lcom/didi/common/model/City;
    invoke-virtual {v0, p1}, Lcom/didi/common/model/City;->equalsById(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #city:Lcom/didi/common/model/City;
    :cond_2
    move-object v0, v2

    .line 43
    goto :goto_0
.end method

.method public getCityByName(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 4
    .parameter "cname"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/City;

    .line 50
    .local v0, city:Lcom/didi/common/model/City;
    invoke-virtual {v0, p1}, Lcom/didi/common/model/City;->equalsByName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #city:Lcom/didi/common/model/City;
    :cond_2
    move-object v0, v2

    .line 54
    goto :goto_0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/didi/common/model/CityList;->get(I)Lcom/didi/common/model/City;

    move-result-object v0

    .line 94
    .local v0, city:Lcom/didi/common/model/City;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, array:Lorg/json/JSONArray;
    const-string v1, "city"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "city"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/CityList;->jsonString:Ljava/lang/String;

    .line 64
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/common/model/City;

    invoke-direct {v2}, Lcom/didi/common/model/City;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public parseArray(Ljava/lang/String;)V
    .locals 4
    .parameter "jsonArray"

    .prologue
    .line 69
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, array:Lorg/json/JSONArray;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .end local v0           #array:Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .restart local v0       #array:Lorg/json/JSONArray;
    new-instance v2, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v2}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v3, Lcom/didi/common/model/City;

    invoke-direct {v3}, Lcom/didi/common/model/City;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    goto :goto_0

    .line 74
    .end local v0           #array:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/City;>;"
    iput-object p1, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/common/model/CityList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->size(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/model/CityList;->jsonString:Ljava/lang/String;

    return-object v0
.end method
