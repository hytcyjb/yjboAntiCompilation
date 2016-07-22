.class public Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;
.super Ljava/lang/Object;
.source "PassengerCancelWithFeeAndTimeEvent.java"


# instance fields
.field public waitFee:D

.field public waitTime:J


# direct methods
.method public constructor <init>(JD)V
    .locals 0
    .parameter "waitTime"
    .parameter "waitFee"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p3, p0, Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;->waitFee:D

    .line 13
    iput-wide p1, p0, Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;->waitTime:J

    .line 14
    return-void
.end method
