.class public Lcom/didi/ddrive/eventbus/event/CancelEvent;
.super Ljava/lang/Object;
.source "CancelEvent.java"


# instance fields
.field public final success:Z

.field public final waitFee:D

.field public final waitTime:J


# direct methods
.method public constructor <init>(ZDJ)V
    .locals 0
    .parameter "success"
    .parameter "waitFee"
    .parameter "waitTime"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/CancelEvent;->success:Z

    .line 14
    iput-wide p2, p0, Lcom/didi/ddrive/eventbus/event/CancelEvent;->waitFee:D

    .line 15
    iput-wide p4, p0, Lcom/didi/ddrive/eventbus/event/CancelEvent;->waitTime:J

    .line 16
    return-void
.end method
