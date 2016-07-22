.class public Lcom/didi/common/model/VoucherRedPointData;
.super Lcom/didi/common/model/BaseObject;
.source "VoucherRedPointData.java"


# instance fields
.field public isRed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/common/model/VoucherRedPointData;->isRed:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/didi/common/model/VoucherRedPointData;->clone()Lcom/didi/common/model/VoucherRedPointData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/didi/common/model/VoucherRedPointData;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, obj:Lcom/didi/common/model/VoucherRedPointData;
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    .end local v0           #obj:Lcom/didi/common/model/VoucherRedPointData;
    check-cast v0, Lcom/didi/common/model/VoucherRedPointData;

    .line 27
    .restart local v0       #obj:Lcom/didi/common/model/VoucherRedPointData;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/didi/common/model/VoucherRedPointData;->clone()Lcom/didi/common/model/VoucherRedPointData;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 20
    const-string v0, "is_red"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/VoucherRedPointData;->isRed:I

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoucherRedPointData.toString--isRed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/common/model/VoucherRedPointData;->isRed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, string:Ljava/lang/String;
    return-object v0
.end method
