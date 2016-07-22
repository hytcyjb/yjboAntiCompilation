.class public Lcom/didi/car/model/CarOrderState;
.super Lcom/didi/common/model/BaseObject;
.source "CarOrderState.java"


# instance fields
.field public consultInfo:Lcom/didi/car/model/CarConsultInfo;

.field public consultStatus:I

.field public driver:Lcom/didi/car/model/CarDriver;

.field public driverCount:I

.field public isArrieved:Z

.field public isPush:Z

.field public isTimeout:Z

.field public pkDriverNums:I

.field public pkMsg:Ljava/lang/String;

.field public pkWaitTime:I

.field public position:Lcom/didi/car/model/CarPosition;

.field public status:I

.field public subStatus:I

.field public switchOpen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/car/model/CarOrderState;->switchOpen:I

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    const-string v3, "time_out"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/didi/car/model/CarOrderState;->isTimeout:Z

    .line 47
    const-string v3, "is_push"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/didi/car/model/CarOrderState;->isPush:Z

    .line 48
    const-string v3, "isArrivedLimited"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/didi/car/model/CarOrderState;->isArrieved:Z

    .line 50
    const-string v3, "consult_status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    .line 51
    const-string v3, "driverNum"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/car/model/CarOrderState;->driverCount:I

    .line 52
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/car/model/CarOrderState;->status:I

    .line 53
    iget v3, p0, Lcom/didi/car/model/CarOrderState;->status:I

    if-gtz v3, :cond_0

    .line 54
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/car/model/CarOrderState;->status:I

    .line 56
    :cond_0
    const-string v3, "driver_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const-string v3, "driver_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, driverObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/didi/car/model/CarDriver;

    invoke-direct {v3}, Lcom/didi/car/model/CarDriver;-><init>()V

    iput-object v3, p0, Lcom/didi/car/model/CarOrderState;->driver:Lcom/didi/car/model/CarDriver;

    .line 59
    iget-object v3, p0, Lcom/didi/car/model/CarOrderState;->driver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v3, v1}, Lcom/didi/car/model/CarDriver;->parse(Lorg/json/JSONObject;)V

    .line 62
    .end local v1           #driverObj:Lorg/json/JSONObject;
    :cond_1
    const-string v3, "consult_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const-string v3, "consult_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    .local v0, consultObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/didi/car/model/CarConsultInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarConsultInfo;-><init>()V

    iput-object v3, p0, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    .line 65
    iget-object v3, p0, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    invoke-virtual {v3, v0}, Lcom/didi/car/model/CarConsultInfo;->parse(Lorg/json/JSONObject;)V

    .line 69
    .end local v0           #consultObj:Lorg/json/JSONObject;
    :cond_2
    const-string v3, "driver_pos"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const-string v3, "driver_pos"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    .local v2, positionObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/didi/car/model/CarPosition;

    invoke-direct {v3}, Lcom/didi/car/model/CarPosition;-><init>()V

    iput-object v3, p0, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    .line 72
    iget-object v3, p0, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v3, v2}, Lcom/didi/car/model/CarPosition;->parse(Lorg/json/JSONObject;)V

    .line 75
    .end local v2           #positionObj:Lorg/json/JSONObject;
    :cond_3
    const-string v3, "switch_is_open"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    const-string v3, "switch_is_open"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/car/model/CarOrderState;->switchOpen:I

    .line 78
    :cond_4
    return-void

    :cond_5
    move v3, v5

    .line 46
    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 47
    goto/16 :goto_1

    :cond_7
    move v4, v5

    .line 48
    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOrderState{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isArrieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/car/model/CarOrderState;->isArrieved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/car/model/CarOrderState;->isTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/car/model/CarOrderState;->isPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->driverCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderState;->driver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consultInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->subStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkDriverNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->pkDriverNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderState;->pkWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderState;->pkMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
