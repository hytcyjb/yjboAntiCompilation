.class public Lcom/didi/taxi/model/TaxiSupplyCoupon;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiSupplyCoupon.java"


# instance fields
.field public tip_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiSupplyCoupon;->tip_msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 13
    const-string v0, "tip_msg"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiSupplyCoupon;->tip_msg:Ljava/lang/String;

    .line 14
    return-void
.end method
