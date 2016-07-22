.class public Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;
.super Ljava/lang/Object;
.source "CancelReasonEvent.java"


# instance fields
.field public result:Lcom/didi/ddrive/net/http/response/CancelReason;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/CancelReason;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    .line 14
    return-void
.end method
