.class public Lcom/didi/car/model/CarOverdraftOrder;
.super Lcom/didi/common/model/BaseObject;
.source "CarOverdraftOrder.java"


# static fields
.field private static final serialVersionUID:J = 0x221560bf8e1b751L


# instance fields
.field private carDriver:Lcom/didi/car/model/CarDriver;

.field private carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarDriver()Lcom/didi/car/model/CarDriver;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/car/model/CarOverdraftOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    return-object v0
.end method

.method public getCarFeeDetail()Lcom/didi/car/model/CarFeeDetail;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/car/model/CarOverdraftOrder;->carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/car/model/CarOverdraftOrder;->oid:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 23
    const-string v2, "oid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarOverdraftOrder;->oid:Ljava/lang/String;

    .line 24
    const-string v2, "driver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "driver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, driverObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/didi/car/model/CarDriver;

    invoke-direct {v2}, Lcom/didi/car/model/CarDriver;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarOverdraftOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 27
    iget-object v2, p0, Lcom/didi/car/model/CarOverdraftOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v2, v0}, Lcom/didi/car/model/CarDriver;->parse(Lorg/json/JSONObject;)V

    .line 29
    .end local v0           #driverObj:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "feeDetail"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "feeDetail"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    .local v1, feeObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {v2}, Lcom/didi/car/model/CarFeeDetail;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarOverdraftOrder;->carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

    .line 32
    iget-object v2, p0, Lcom/didi/car/model/CarOverdraftOrder;->carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

    invoke-virtual {v2, v1}, Lcom/didi/car/model/CarFeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 34
    .end local v1           #feeObj:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public setCarDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 0
    .parameter "carDriver"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/car/model/CarOverdraftOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 64
    return-void
.end method

.method public setCarFeeDetail(Lcom/didi/car/model/CarFeeDetail;)V
    .locals 0
    .parameter "carFeeDetail"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/car/model/CarOverdraftOrder;->carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

    .line 79
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/car/model/CarOverdraftOrder;->oid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOverdraftOrder [oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carDriver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carFeeDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->carFeeDetail:Lcom/didi/car/model/CarFeeDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOverdraftOrder;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
