.class public Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;
.super Ljava/lang/Object;
.source "UnpayedOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpayedOrder"
.end annotation


# instance fields
.field public accuredMoney:D

.field public orderId:J

.field public orderTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
