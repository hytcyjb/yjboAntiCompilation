.class public Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;
.super Ljava/lang/Object;
.source "UnpayedOrderEvent.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public order:Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;Ljava/lang/String;)V
    .locals 0
    .parameter "order"
    .parameter "msg"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;->order:Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;

    .line 15
    iput-object p2, p0, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;->msg:Ljava/lang/String;

    .line 16
    return-void
.end method
