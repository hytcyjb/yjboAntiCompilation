.class public Lcom/didi/ddrive/net/http/response/OrderBill;
.super Ljava/lang/Object;
.source "OrderBill.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    }
.end annotation


# instance fields
.field public channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

.field public driveTime:I

.field public feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

.field public isNew:Z

.field public mileage:I

.field public notNeedPay:Z

.field public shouldPayFee:D

.field public totalMoney:D

.field public voucherAmount:D

.field public voucherId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
