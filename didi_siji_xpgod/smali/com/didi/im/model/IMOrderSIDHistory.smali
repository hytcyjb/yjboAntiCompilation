.class public Lcom/didi/im/model/IMOrderSIDHistory;
.super Lcom/didi/common/model/BaseObject;
.source "IMOrderSIDHistory.java"


# static fields
.field private static final serialVersionUID:J = 0x2cd99aa38669afb1L


# instance fields
.field private sidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMOrderSID;",
            ">;"
        }
    .end annotation
.end field

.field private sidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getSidList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMOrderSID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSidMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidMap:Ljava/util/Map;

    .line 43
    iget-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMOrderSID;

    .line 44
    .local v1, order:Lcom/didi/im/model/IMOrderSID;
    iget-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/didi/im/model/IMOrderSID;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/didi/im/model/IMOrderSID;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v1           #order:Lcom/didi/im/model/IMOrderSID;
    :cond_0
    iget-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidMap:Ljava/util/Map;

    return-object v2
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/im/model/IMOrderSIDHistory;->uid:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 30
    const-string v2, "uid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->uid:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, array:Lorg/json/JSONArray;
    const-string v2, "sessioninfos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "sessioninfos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/didi/im/model/IMOrderSID;

    invoke-direct {v1}, Lcom/didi/im/model/IMOrderSID;-><init>()V

    .line 36
    .local v1, orderSID:Lcom/didi/im/model/IMOrderSID;
    new-instance v2, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v2}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidList:Ljava/util/ArrayList;

    .line 38
    .end local v1           #orderSID:Lcom/didi/im/model/IMOrderSID;
    :cond_0
    return-void
.end method

.method public setSidList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMOrderSID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, sidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMOrderSID;>;"
    iput-object p1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public setSidMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, sidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->uid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMOrderSIDHistory [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sidList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->sidList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMOrderSIDHistory;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
