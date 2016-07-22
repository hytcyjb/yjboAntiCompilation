.class public Lcom/didi/common/model/PoiList;
.super Lcom/didi/common/model/BaseObject;
.source "PoiList.java"


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field public searchId:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

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
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/common/model/PoiList;->searchId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PoiListObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 35
    const-string v2, "searchid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/PoiList;->searchId:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, array:Lorg/json/JSONArray;
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    :goto_0
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 44
    .local v0, addr:Lcom/didi/common/model/Address;
    iget v2, p0, Lcom/didi/common/model/PoiList;->type:I

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setType(I)V

    .line 45
    new-instance v2, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v2}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    .line 46
    .end local v0           #addr:Lcom/didi/common/model/Address;
    :cond_0
    return-void

    .line 39
    :cond_1
    const-string v2, "addrlist"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "addrlist"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 3
    .parameter "city"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/Address;

    .line 64
    .local v1, locPoi:Lcom/didi/common/model/Address;
    invoke-virtual {v1, p1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 3
    .parameter "keyword"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/Address;

    .line 76
    .local v1, locPoi:Lcom/didi/common/model/Address;
    invoke-virtual {v1, p1}, Lcom/didi/common/model/Address;->setKeyword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    iput-object p1, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiList [list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PoiList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
