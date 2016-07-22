.class public abstract Lcom/didi/car/model/FeeDetail;
.super Lcom/didi/common/model/BaseObject;
.source "FeeDetail.java"


# static fields
.field public static final PAY_BUSINESS_BALANCE:I = 0x15

.field public static final PAY_BUSINESS_NOTIN_RULES:I = 0x18

.field public static final PAY_BUSINESS_NOUSE:I = 0x14

.field public static final PAY_BUSINESS_PERSONAL_APPLAY:I = 0x17

.field public static final PAY_BUSINESS_PERSONAL_NO_APPLAY:I = 0x16

.field public static final PAY_PERSONAL:I


# instance fields
.field public balancePayment:Lcom/didi/car/model/CarPayment;

.field public basicFeeTitle:Ljava/lang/String;

.field public basicFeeValue:Ljava/lang/String;

.field public carPaymentStr:Ljava/lang/String;

.field public carPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarPayment;",
            ">;"
        }
    .end annotation
.end field

.field public carRefund:Lcom/didi/car/model/CarRefund;

.field public defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

.field public extraMsg:Ljava/lang/String;

.field public favourFeeTitle:Ljava/lang/String;

.field public favourFeeValue:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public payButtonTitle:Ljava/lang/String;

.field public payButtonTitleLabel:Ljava/lang/String;

.field public payTitle:Ljava/lang/String;

.field public payType:I

.field public pennyFlag:I

.field public refundTip:Ljava/lang/String;

.field public voucherUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->extraMsg:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->basicFeeTitle:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->basicFeeValue:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->favourFeeTitle:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/FeeDetail;->favourFeeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 68
    const-string v4, "carfee_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->basicFeeTitle:Ljava/lang/String;

    .line 69
    const-string v4, "carfee_total"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->basicFeeValue:Ljava/lang/String;

    .line 70
    const-string v4, "favour_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->favourFeeTitle:Ljava/lang/String;

    .line 71
    const-string v4, "favour_total"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->favourFeeValue:Ljava/lang/String;

    .line 74
    const-string v4, "payments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 75
    .local v1, basicArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 78
    .local v0, actLength:I
    const/4 v2, 0x0

    .local v2, iAct:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 79
    new-instance v3, Lcom/didi/car/model/CarPayment;

    invoke-direct {v3}, Lcom/didi/car/model/CarPayment;-><init>()V

    .line 81
    .local v3, info:Lcom/didi/car/model/CarPayment;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarPayment;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/didi/car/model/CarPayment;->paymentMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v3           #info:Lcom/didi/car/model/CarPayment;
    :cond_0
    iget-object v4, p0, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    const-string v5, "|"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .end local v0           #actLength:I
    .end local v2           #iAct:I
    :cond_1
    return-void

    .line 82
    .restart local v0       #actLength:I
    .restart local v2       #iAct:I
    .restart local v3       #info:Lcom/didi/car/model/CarPayment;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
