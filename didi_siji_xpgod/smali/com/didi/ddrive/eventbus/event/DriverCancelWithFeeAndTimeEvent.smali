.class public Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;
.super Ljava/lang/Object;
.source "DriverCancelWithFeeAndTimeEvent.java"


# instance fields
.field public waitFee:D

.field public waitTime:J


# direct methods
.method public constructor <init>(JD)V
    .locals 0
    .parameter "waitTime"
    .parameter "waitFee"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p3, p0, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitFee:D

    .line 14
    iput-wide p1, p0, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitTime:J

    .line 15
    return-void
.end method
