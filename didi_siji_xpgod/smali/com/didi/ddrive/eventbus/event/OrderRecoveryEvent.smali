.class public Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;
.super Ljava/lang/Object;
.source "OrderRecoveryEvent.java"


# instance fields
.field public recovery:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;->recovery:Z

    .line 12
    return-void
.end method
