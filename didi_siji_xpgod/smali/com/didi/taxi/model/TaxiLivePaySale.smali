.class public Lcom/didi/taxi/model/TaxiLivePaySale;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiLivePaySale.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public balanceAmount:I

.field public balanceInfo:Ljava/lang/String;

.field public enterpriseDesc:Ljava/lang/String;

.field public enterpriseFee:I

.field public enterpriseStatus:I

.field public payAmount:I

.field public ticketAmount:I

.field public ticketFlag:I

.field public ticketId:Ljava/lang/String;

.field public ticketPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 43
    const-string v2, "balance"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->balanceAmount:I

    .line 44
    const-string v2, "true_pay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->payAmount:I

    .line 45
    const-string v2, "enterprise_fee"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseFee:I

    .line 47
    const-string v2, "dcq_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "dcq_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    .local v0, dcqObj:Lorg/json/JSONObject;
    const-string v2, "dcq_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketId:Ljava/lang/String;

    .line 50
    const-string v2, "dcq_link"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketPageUrl:Ljava/lang/String;

    .line 51
    const-string v2, "dcq_flag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    .line 52
    const-string v2, "dcq_amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketAmount:I

    .line 55
    .end local v0           #dcqObj:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "enterprise_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "enterprise_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    .local v1, entObj:Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseStatus:I

    .line 58
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseDesc:Ljava/lang/String;

    .line 60
    .end local v1           #entObj:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method
