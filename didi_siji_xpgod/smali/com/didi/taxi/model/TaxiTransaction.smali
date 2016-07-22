.class public Lcom/didi/taxi/model/TaxiTransaction;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiTransaction.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:I

.field private isIncome:Z

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->id:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isIncome()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/didi/taxi/model/TaxiTransaction;->isIncome:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 31
    const-string v3, "transid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->id:I

    .line 32
    const-string v3, "desc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->description:Ljava/lang/String;

    .line 33
    const-string v3, "isincome"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->isIncome:Z

    .line 34
    const-string v3, "amount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    .local v2, amountInt:I
    int-to-double v3, v2

    const-wide/high16 v5, 0x4059

    div-double v0, v3, v5

    .line 37
    .local v0, amountDbl:D
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->amount:Ljava/lang/String;

    .line 42
    const-string v3, "time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->time:Ljava/lang/String;

    .line 43
    const-string v3, "partner_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiTransaction;->cardNumber:Ljava/lang/String;

    .line 44
    return-void

    .line 33
    .end local v0           #amountDbl:D
    .end local v2           #amountInt:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->amount:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNumber"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->cardNumber:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->description:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 51
    iput p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->id:I

    .line 52
    return-void
.end method

.method public setIncome(Z)V
    .locals 0
    .parameter "isIncome"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->isIncome:Z

    .line 68
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiTransaction;->time:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiTransaction;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiTransaction;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIncome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiTransaction;->isIncome:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiTransaction;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiTransaction;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
