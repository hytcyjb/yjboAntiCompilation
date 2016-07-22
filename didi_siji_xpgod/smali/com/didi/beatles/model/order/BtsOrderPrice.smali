.class public Lcom/didi/beatles/model/order/BtsOrderPrice;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderPrice.java"


# instance fields
.field public distance:Ljava/lang/String;

.field public extra_info:Ljava/lang/String;

.field public final mReqId:J

.field public payStr:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public voucherCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "reqId"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/didi/beatles/model/order/BtsOrderPrice;->mReqId:J

    .line 22
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Lorg/json/JSONObject;)V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const-string v0, "distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPrice;->distance:Ljava/lang/String;

    .line 29
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPrice;->price:Ljava/lang/String;

    .line 30
    const-string v0, "extra_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPrice;->extra_info:Ljava/lang/String;

    .line 31
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPrice;->payStr:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method
