.class public Lcom/avos/avoscloud/okio/ForwardingTimeout;
.super Lcom/avos/avoscloud/okio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lcom/avos/avoscloud/okio/Timeout;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/Timeout;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avos/avoscloud/okio/Timeout;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    .line 28
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearDeadline()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearTimeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lcom/avos/avoscloud/okio/Timeout;)Lcom/avos/avoscloud/okio/ForwardingTimeout;
    .locals 2
    .parameter

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    .line 38
    return-object p0
.end method

.method public throwIfReached()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okio/Timeout;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
