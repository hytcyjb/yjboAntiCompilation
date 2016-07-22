.class public Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;
.super Ljava/lang/Object;
.source "OrderDeleteEvent.java"


# instance fields
.field public callback:Ljava/lang/Runnable;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public success:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "b"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->list:Ljava/util/List;

    .line 17
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->success:Z

    .line 18
    iput-object p3, p0, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    .line 19
    return-void
.end method
