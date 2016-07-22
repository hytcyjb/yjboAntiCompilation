.class public abstract Lcom/didi/frame/business/terminator/OrderTerminator;
.super Ljava/lang/Object;
.source "OrderTerminator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 23
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 24
    .local v0, sendable:Lcom/didi/frame/Sendable;
    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;

    move-result-object v1

    .line 27
    .local v1, terminator:Lcom/didi/frame/business/terminator/OrderTerminator;
    invoke-virtual {v1, v0, p0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract terminate(Lcom/didi/frame/Sendable;Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V
.end method
