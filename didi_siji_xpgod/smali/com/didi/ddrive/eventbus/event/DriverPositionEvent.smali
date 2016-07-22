.class public Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;
.super Ljava/lang/Object;
.source "DriverPositionEvent.java"


# instance fields
.field public position:Lcom/didi/ddrive/net/http/response/Position;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/Position;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    .line 14
    return-void
.end method
