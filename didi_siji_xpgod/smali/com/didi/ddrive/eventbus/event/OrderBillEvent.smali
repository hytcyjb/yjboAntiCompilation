.class public Lcom/didi/ddrive/eventbus/event/OrderBillEvent;
.super Ljava/lang/Object;
.source "OrderBillEvent.java"


# instance fields
.field public final success:Z

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->success:Z

    .line 13
    return-void
.end method
