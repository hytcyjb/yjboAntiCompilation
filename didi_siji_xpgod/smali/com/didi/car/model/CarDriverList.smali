.class public Lcom/didi/car/model/CarDriverList;
.super Lcom/didi/common/model/BaseObject;
.source "CarDriverList.java"


# instance fields
.field public arriveTime:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
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
.method public get(I)Lcom/didi/car/model/CarDriver;
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/didi/common/util/CollectionUtil;->isAvailable(Ljava/util/Collection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarDriver;

    goto :goto_0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, array:Lorg/json/JSONArray;
    const-string v1, "drivers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "drivers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41
    const-string v1, "district"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarDriverList;->telCode:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/didi/car/model/CarDriverList;->telCode:Ljava/lang/String;

    sput-object v1, Lcom/didi/common/util/Constant;->telCode:Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/car/model/CarDriver;

    invoke-direct {v2}, Lcom/didi/car/model/CarDriver;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    .line 44
    const-string v1, "arriveTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarDriverList;->arriveTime:Ljava/lang/String;

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
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    iput-object p1, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->size(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiDriverList [list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarDriverList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarDriverList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarDriverList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarDriverList;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
