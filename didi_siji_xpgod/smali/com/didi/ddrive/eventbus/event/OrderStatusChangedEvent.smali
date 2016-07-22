.class public Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;
.super Ljava/lang/Object;
.source "OrderStatusChangedEvent.java"


# instance fields
.field public currentStatus:Lcom/didi/ddrive/model/OrderState;

.field public did:J

.field public lat:D

.field public lng:D


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/model/OrderState;)V
    .locals 0
    .parameter "mCurrentState"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;->currentStatus:Lcom/didi/ddrive/model/OrderState;

    .line 17
    return-void
.end method
