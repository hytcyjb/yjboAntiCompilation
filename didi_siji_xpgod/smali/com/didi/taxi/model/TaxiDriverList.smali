.class public Lcom/didi/taxi/model/TaxiDriverList;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiDriverList.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;"
        }
    .end annotation
.end field

.field private telCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/didi/taxi/model/TaxiDriver;
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/didi/common/util/CollectionUtil;->isAvailable(Ljava/util/Collection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiDriver;

    goto :goto_0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, array:Lorg/json/JSONArray;
    const-string v1, "drivers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v1, "drivers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 39
    const-string v1, "tel_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->telCode:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->telCode:Ljava/lang/String;

    sput-object v1, Lcom/didi/common/util/Constant;->telCode:Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/taxi/model/TaxiDriver;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiDriver;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

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
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->size(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiDriverList [list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->telCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiDriverList;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
