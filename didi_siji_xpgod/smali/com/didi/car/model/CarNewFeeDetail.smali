.class public Lcom/didi/car/model/CarNewFeeDetail;
.super Lcom/didi/car/model/FeeDetail;
.source "CarNewFeeDetail.java"


# static fields
.field private static final serialVersionUID:J = -0x2dd3ae0d99ce6dbdL


# instance fields
.field public basicFeeItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarFeeItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public favourFeeItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarFeeItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/didi/car/model/FeeDetail;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "obj"

    .prologue
    const/4 v10, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 32
    const-string v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->oid:Ljava/lang/String;

    .line 33
    const-string v8, "pay_title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->payTitle:Ljava/lang/String;

    .line 34
    const-string v8, "pay_button_title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitle:Ljava/lang/String;

    .line 35
    const-string v8, "pay_button_title_label"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitleLabel:Ljava/lang/String;

    .line 36
    const-string v8, "penny_flag"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->pennyFlag:I

    .line 38
    const-string v8, "pay_type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->payType:I

    .line 39
    const-string v8, "ext_msg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->extraMsg:Ljava/lang/String;

    .line 41
    const-string v8, "refund_info"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "refund_info"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 42
    new-instance v8, Lcom/didi/car/model/CarRefund;

    invoke-direct {v8}, Lcom/didi/car/model/CarRefund;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 43
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    const-string v9, "refund_info"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarRefund;->parse(Lorg/json/JSONObject;)V

    .line 45
    :cond_0
    const-string v8, "refund_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 46
    const-string v8, "refund_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->refundTip:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v8, "basic_fee_info_list"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 51
    .local v1, basicArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 53
    .local v0, actLength:I
    const/4 v5, 0x0

    .local v5, iAct:I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 54
    new-instance v7, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v7}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 56
    .local v7, info:Lcom/didi/car/model/CarFeeItemInfo;
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/car/model/CarFeeItemInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_1
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v0           #actLength:I
    .end local v5           #iAct:I
    .end local v7           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_2
    const-string v8, "favour_fee_info_list"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 64
    .local v3, favourArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 65
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 66
    .local v4, favourLength:I
    const/4 v6, 0x0

    .local v6, iFavour:I
    :goto_2
    if-ge v6, v4, :cond_5

    .line 67
    new-instance v7, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v7}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 69
    .restart local v7       #info:Lcom/didi/car/model/CarFeeItemInfo;
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/car/model/CarFeeItemInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :goto_3
    iget v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v9, 0x3ed

    if-ne v8, v9, :cond_3

    .line 73
    new-instance v2, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v2}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    .line 74
    .local v2, carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    iget-object v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    iput-object v8, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/didi/car/model/CarNewFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 77
    iget-object v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->voucherUrl:Ljava/lang/String;

    .line 80
    .end local v2           #carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    :cond_3
    iget v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v9, 0x3f0

    if-ne v8, v9, :cond_4

    .line 81
    const-string v8, "-----------updateBalancePayType---info.feeType == 1008----"

    invoke-static {v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    new-instance v8, Lcom/didi/car/model/CarPayment;

    invoke-direct {v8}, Lcom/didi/car/model/CarPayment;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    .line 83
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iput v10, v8, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 84
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v9, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iput-object v9, v8, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 85
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v9, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    iput-object v9, v8, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    .line 86
    iput v10, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    .line 89
    :cond_4
    iget-object v8, p0, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 98
    .end local v4           #favourLength:I
    .end local v6           #iFavour:I
    .end local v7           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_5
    return-void

    .line 70
    .restart local v4       #favourLength:I
    .restart local v6       #iFavour:I
    .restart local v7       #info:Lcom/didi/car/model/CarFeeItemInfo;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 57
    .end local v3           #favourArray:Lorg/json/JSONArray;
    .end local v4           #favourLength:I
    .end local v6           #iFavour:I
    .restart local v0       #actLength:I
    .restart local v5       #iAct:I
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarNewFeeDetail{oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->payTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payButtonTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payButtonTitleLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitleLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->payType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pennyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->pennyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->extraMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carRefund="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refundTip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->refundTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", basicFeeItemInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favourFeeItemInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
