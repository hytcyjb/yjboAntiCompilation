.class public Lcom/didi/ddrive/net/http/response/PayedDetail;
.super Ljava/lang/Object;
.source "PayedDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public driveTime:I

.field public feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

.field public mileage:I

.field public paiedFee:D

.field public payChannel:I

.field public totalMoney:D

.field public voucherAmount:D

.field public voucherId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/net/http/response/PayedDetail;->payChannel:I

    return-void
.end method
