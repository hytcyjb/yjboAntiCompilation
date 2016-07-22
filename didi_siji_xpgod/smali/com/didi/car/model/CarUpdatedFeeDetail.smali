.class public Lcom/didi/car/model/CarUpdatedFeeDetail;
.super Lcom/didi/common/model/BaseObject;
.source "CarUpdatedFeeDetail.java"


# static fields
.field private static final serialVersionUID:J = 0x6696838786ed730L


# instance fields
.field public feeDetail:Lcom/didi/car/model/FeeDetail;

.field public pricingModel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 26
    const-string v0, "pricingModel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarUpdatedFeeDetail;->pricingModel:I

    .line 28
    iget v0, p0, Lcom/didi/car/model/CarUpdatedFeeDetail;->pricingModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 29
    new-instance v0, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {v0}, Lcom/didi/car/model/CarNewFeeDetail;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarUpdatedFeeDetail;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/didi/car/model/CarUpdatedFeeDetail;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v0, p1}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 35
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {v0}, Lcom/didi/car/model/CarFeeDetail;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarUpdatedFeeDetail;->feeDetail:Lcom/didi/car/model/FeeDetail;

    goto :goto_0
.end method
