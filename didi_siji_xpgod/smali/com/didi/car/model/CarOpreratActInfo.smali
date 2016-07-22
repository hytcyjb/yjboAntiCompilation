.class public Lcom/didi/car/model/CarOpreratActInfo;
.super Lcom/didi/common/model/BaseObject;
.source "CarOpreratActInfo.java"


# instance fields
.field private coupenValue:Ljava/lang/String;

.field private couponText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/didi/car/model/CarOpreratActInfo;->couponText:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/didi/car/model/CarOpreratActInfo;->coupenValue:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getCoupenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/car/model/CarOpreratActInfo;->coupenValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/car/model/CarOpreratActInfo;->couponText:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 24
    const-string v0, "activity_doc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarOpreratActInfo;->couponText:Ljava/lang/String;

    .line 25
    const-string v0, "activity_ded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarOpreratActInfo;->coupenValue:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setCoupenValue(Ljava/lang/String;)V
    .locals 0
    .parameter "coupenValue"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/car/model/CarOpreratActInfo;->coupenValue:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCouponText(Ljava/lang/String;)V
    .locals 0
    .parameter "couponText"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/car/model/CarOpreratActInfo;->couponText:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOpreratActInfo{couponText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOpreratActInfo;->couponText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coupenValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOpreratActInfo;->coupenValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
