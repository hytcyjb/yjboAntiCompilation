.class public Lcom/didi/common/model/OrderHistoryList;
.super Lcom/didi/common/model/BaseObject;
.source "OrderHistoryList.java"


# instance fields
.field public doneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field public hasNext:Z

.field public timeOffsets:J

.field public waitingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getWaitingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 25
    const-string v4, "havenext"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/didi/common/model/OrderHistoryList;->hasNext:Z

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, array:Lorg/json/JSONArray;
    const-string v3, "order_waiting"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    new-instance v2, Lcom/didi/common/model/OrderHistory;

    invoke-direct {v2}, Lcom/didi/common/model/OrderHistory;-><init>()V

    .line 29
    .local v2, order:Lcom/didi/common/model/OrderHistory;
    const-string v3, "order_waiting"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    new-instance v3, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v3}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    .line 31
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 32
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/OrderHistory;

    iget v3, v3, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    if-ne v3, v6, :cond_0

    .line 33
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    iget-object v4, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    iget-object v5, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 25
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #order:Lcom/didi/common/model/OrderHistory;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 38
    .restart local v0       #array:Lorg/json/JSONArray;
    :cond_2
    const-string v3, "order_done"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 39
    new-instance v2, Lcom/didi/common/model/OrderHistory;

    invoke-direct {v2}, Lcom/didi/common/model/OrderHistory;-><init>()V

    .line 40
    .restart local v2       #order:Lcom/didi/common/model/OrderHistory;
    const-string v3, "order_done"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41
    new-instance v3, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v3}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    .line 42
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 43
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/OrderHistory;

    iget v3, v3, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    if-ne v3, v6, :cond_3

    .line 44
    iget-object v3, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    iget-object v4, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    iget-object v5, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 49
    .end local v1           #i:I
    .end local v2           #order:Lcom/didi/common/model/OrderHistory;
    :cond_4
    return-void
.end method

.method public setWaitingList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, waitingList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    iput-object p1, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderHistoryList [waitingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", doneList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeOffsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/model/OrderHistoryList;->timeOffsets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/OrderHistoryList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/OrderHistoryList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/OrderHistoryList;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
