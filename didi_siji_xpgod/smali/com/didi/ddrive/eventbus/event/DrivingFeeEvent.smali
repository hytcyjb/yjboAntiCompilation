.class public Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;
.super Ljava/lang/Object;
.source "DrivingFeeEvent.java"


# instance fields
.field public final distance:I

.field public final fee:D


# direct methods
.method public constructor <init>(ID)V
    .locals 0
    .parameter "distance"
    .parameter "fee"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->distance:I

    .line 13
    iput-wide p2, p0, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->fee:D

    .line 14
    return-void
.end method
