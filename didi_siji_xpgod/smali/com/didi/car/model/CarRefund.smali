.class public Lcom/didi/car/model/CarRefund;
.super Lcom/didi/common/model/BaseObject;
.source "CarRefund.java"


# static fields
.field public static final STATUS_REFUND_APPLY:I = 0x2

.field public static final STATUS_REFUND_NORMAL:I = 0x0

.field public static final STATUS_REFUND_NO_APPLY:I = 0x1


# instance fields
.field public refundLink:Ljava/lang/String;

.field public refundStatus:I

.field public refundTip:Ljava/lang/String;

.field public refundTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/model/CarRefund;->refundStatus:I

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 32
    const-string v0, "refund_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarRefund;->refundStatus:I

    .line 33
    const-string v0, "refund_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRefund;->refundTitle:Ljava/lang/String;

    .line 34
    const-string v0, "refund_link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRefund;->refundLink:Ljava/lang/String;

    .line 35
    const-string v0, "refund_tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRefund;->refundTip:Ljava/lang/String;

    .line 36
    return-void
.end method
